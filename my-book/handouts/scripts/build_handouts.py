from pathlib import Path
import re
from docx import Document
from docx.enum.text import WD_ALIGN_PARAGRAPH
from docx.shared import Inches, Pt, RGBColor

ROOT = Path(__file__).resolve().parents[1]
SOURCE_DIR = ROOT / "markdown"
OUTPUT_DIR = ROOT / "docx"
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

def clean_inline(text):
    text = re.sub(r'\[([^\]]+)\]\([^)]+\)', r'\1', text)
    text = re.sub(r'\*\*(.*?)\*\*', r'\1', text)
    text = re.sub(r'(?<!\*)\*(.*?)\*(?!\*)', r'\1', text)
    text = re.sub(r'_(.*?)_', r'\1', text)
    text = text.replace('`', '')
    return text.strip()

def add_paragraph(doc, text, style=None, bold_prefix=None):
    p = doc.add_paragraph(style=style)
    if bold_prefix and text.startswith(bold_prefix):
        r = p.add_run(bold_prefix)
        r.bold = True
        p.add_run(text[len(bold_prefix):])
    else:
        p.add_run(clean_inline(text))
    return p

def build_docx(source_path):
    doc = Document()
    section = doc.sections[0]
    section.top_margin = Inches(0.7)
    section.bottom_margin = Inches(0.7)
    section.left_margin = Inches(0.8)
    section.right_margin = Inches(0.8)

    styles = doc.styles
    normal = styles["Normal"]
    normal.font.name = "Arial"
    normal.font.size = Pt(10.5)
    normal.paragraph_format.space_after = Pt(6)
    normal.paragraph_format.line_spacing = 1.08
    for name, size in (("Title", 20), ("Heading 1", 16), ("Heading 2", 13), ("Heading 3", 11)):
        st = styles[name]
        st.font.name = "Arial"
        st.font.size = Pt(size)
        st.font.bold = True
        st.font.color.rgb = RGBColor(31, 55, 80)
        st.paragraph_format.keep_with_next = True

    lines = source_path.read_text(encoding="utf-8").splitlines()
    i = 0
    while i < len(lines):
        raw = lines[i].rstrip()
        line = raw.strip()
        if not line or line == "---":
            i += 1
            continue
        if line.startswith("# "):
            p = doc.add_paragraph(style="Title")
            p.add_run(clean_inline(line[2:]))
            p.paragraph_format.space_after = Pt(10)
            i += 1
            continue
        if line.startswith("### "):
            add_paragraph(doc, line[4:], "Heading 2")
            i += 1
            continue
        if line.startswith("## "):
            add_paragraph(doc, line[3:], "Heading 1")
            i += 1
            continue
        if line.startswith(">"):
            quote = line[1:].strip()
            if re.fullmatch(r'[_\s]{8,}', quote):
                p = doc.add_paragraph()
                p.paragraph_format.left_indent = Inches(0.15)
                p.paragraph_format.space_after = Pt(7)
                run = p.add_run("_" * 72)
                run.font.color.rgb = RGBColor(110, 110, 110)
            else:
                p = doc.add_paragraph()
                p.paragraph_format.left_indent = Inches(0.18)
                p.paragraph_format.space_after = Pt(7)
                p.add_run(clean_inline(quote))
            i += 1
            continue
        if line.startswith("- [ ]"):
            p = doc.add_paragraph(style="List Bullet")
            p.add_run("☐  " + clean_inline(line[5:].strip()))
            i += 1
            continue
        if line.startswith("- "):
            p = doc.add_paragraph(style="List Bullet")
            p.add_run(clean_inline(line[2:]))
            i += 1
            continue
        numbered = re.match(r'^(\d+)\.\s+(.*)$', line)
        if numbered:
            p = doc.add_paragraph(style="List Number")
            p.add_run(clean_inline(numbered.group(2)))
            i += 1
            continue
        if line.startswith("**") and line.endswith("**") and len(line) > 4:
            p = doc.add_paragraph()
            p.paragraph_format.space_before = Pt(3)
            r = p.add_run(clean_inline(line))
            r.bold = True
            i += 1
            continue
        # Join wrapped Markdown source lines into a single readable paragraph.
        parts = [line]
        i += 1
        while i < len(lines):
            nxt = lines[i].strip()
            if (not nxt or nxt == "---" or nxt.startswith(("# ", "## ", "### ", ">", "- ")) or re.match(r'^\d+\.\s+', nxt)):
                break
            parts.append(nxt)
            i += 1
        p = doc.add_paragraph()
        p.add_run(clean_inline(" ".join(parts)))

    # Add document metadata for file identification.
    doc.core_properties.title = source_path.stem.replace("-", " ").title()
    doc.core_properties.subject = "Participant handout for the ten-session professional-learning curriculum"
    doc.core_properties.author = "Special Education Professional Learning Curriculum"
    output = OUTPUT_DIR / (source_path.stem + ".docx")
    doc.save(output)
    return output

def main():
    sources = sorted(SOURCE_DIR.glob("*.md"))
    if not sources:
        raise SystemExit(f"No Markdown handouts found in {SOURCE_DIR}")
    outputs = [build_docx(path) for path in sources]
    print(f"Generated {len(outputs)} DOCX files:")
    for path in outputs:
        print(path.relative_to(ROOT))

if __name__ == "__main__":
    main()
