#!/usr/bin/env bash
# Build the standalone course PDF from the ordered Markdown sources in
# my-book/docs/pandoc/pdf/src. This is separate from mdBook's HTML build.

set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PDF_DIR="$SCRIPT_DIR/my-book/docs/pandoc/pdf"
SOURCE_DIR="$PDF_DIR/src"
OUTPUT_FILE="$PDF_DIR/TeacherLLMTraining.pdf"
PANDOC_DATA_DIR="${PANDOC_DATA_DIR:-$HOME/.local/share/pandoc}"
TEMPLATE_FILE="$PANDOC_DATA_DIR/templates/eisvogel.latex"

for command_name in pandoc xelatex; do
  if ! command -v "$command_name" >/dev/null 2>&1; then
    echo "Error: required command '$command_name' was not found in PATH." >&2
    exit 1
  fi
done
if [[ ! -f "$TEMPLATE_FILE" ]]; then
  echo "Error: Eisvogel template not found: $TEMPLATE_FILE" >&2
  echo "Set PANDOC_DATA_DIR to the directory containing the templates/ folder." >&2
  exit 1
fi
if [[ ! -f "$SOURCE_DIR/SUMMARY.md" ]]; then
  echo "Error: PDF source index not found: $SOURCE_DIR/SUMMARY.md" >&2
  exit 1
fi

# Keep this list in the same order as SUMMARY.md. SUMMARY.md is an index,
# not content; summary.md is the actual course overview chapter.
SOURCE_FILES=(
  "summary.md"
  "course-map-and-assessment-plan.md"
  "getting-started.md"
  "multidisciplinary-case-studies.md"
  "01-prompting.md"
  "02-iep-goals.md"
  "03-data-collection.md"
  "04-excel-monitoring.md"
  "05-data-based-decisions.md"
  "06-copilot-email.md"
  "09-ai-literacy-foundations.md"
  "10-misconceptions-and-failure-analysis.md"
  "11-critical-evaluation-lab.md"
  "12-independent-performance-capstone.md"
  "08-final-workbook.md"
  "participant-assessments.md"
  "ai-literacy-assessment.md"
  "participant-lesson-handouts.md"
  "practical-competency-checklist.md"
  "accessibility-and-release-checklist.md"
  "facilitator-practice-edition.md"
  "ai-literacy-facilitator-guide.md"
  "prompt-library.md"
  "practice-labs.md"
  "responsible-use-and-implementation.md"
  "references.md"
)
for source_file in "${SOURCE_FILES[@]}"; do
  if [[ ! -f "$SOURCE_DIR/$source_file" ]]; then
    echo "Error: required PDF source file not found: $SOURCE_DIR/$source_file" >&2
    exit 1
  fi
done

mkdir -p "$PDF_DIR"
echo "Building course PDF..."
echo "  Sources: $SOURCE_DIR"
echo "  Output:  $OUTPUT_FILE"
echo ""
cd "$SOURCE_DIR"
pandoc "${SOURCE_FILES[@]}" \
  --output="$OUTPUT_FILE" \
  --data-dir="$PANDOC_DATA_DIR" \
  --template eisvogel \
  --syntax-highlighting idiomatic \
  --number-sections \
  --toc \
  --toc-depth=3 \
  --pdf-engine=xelatex \
  --resource-path="$SOURCE_DIR" \
  -V book
echo ""
echo "PDF build complete: $OUTPUT_FILE"
