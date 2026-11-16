#!/usr/bin/env bash
# Build the course PDF using the ordered Markdown links in SUMMARY.md.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PDF_DIR="$SCRIPT_DIR/my-book/docs/pandoc/pdf"
SOURCE_DIR="$PDF_DIR/src"
SUMMARY_FILE="$SOURCE_DIR/SUMMARY.md"
OUTPUT_FILE="$PDF_DIR/TeacherLLMTraining.pdf"
ENV_FILE="$SCRIPT_DIR/.env"

if [[ ! -f "$ENV_FILE" ]]; then
  echo "Error: configuration file not found: $ENV_FILE" >&2
  echo "Copy .env.example to .env and set your local Pandoc data directory." >&2
  exit 1
fi

# .env must use shell-compatible KEY=value entries. It is intentionally local
# and ignored by Git; do not put secrets or executable commands in this file.
set -a
# shellcheck disable=SC1090
source "$ENV_FILE"
set +a

PANDOC_TEMPLATE="${PANDOC_TEMPLATE:-eisvogel}"
PDF_ENGINE="${PDF_ENGINE:-xelatex}"
if [[ -z "${PANDOC_DATA_DIR:-}" ]]; then
  echo "Error: PANDOC_DATA_DIR must be set in $ENV_FILE." >&2
  exit 1
fi
TEMPLATE_FILE="$PANDOC_DATA_DIR/templates/eisvogel.latex"

for command_name in pandoc "$PDF_ENGINE"; do
  if ! command -v "$command_name" >/dev/null 2>&1; then
    echo "Error: required command '$command_name' was not found in PATH." >&2
    exit 1
  fi
done
if [[ ! -f "$TEMPLATE_FILE" ]]; then
  echo "Error: Pandoc template not found: $TEMPLATE_FILE" >&2
  exit 1
fi
if [[ ! -f "$SUMMARY_FILE" ]]; then
  echo "Error: source index not found: $SUMMARY_FILE" >&2
  exit 1
fi

# Extract local Markdown targets from SUMMARY.md in document order. The
# summary file is the source of truth; no chapter list is duplicated here.
mapfile -t SOURCE_FILES < <(
  sed -nE 's/.*\]\(([^)]*\.md)(#[^)]*)?\).*/\1/p' "$SUMMARY_FILE"
)
if [[ ${#SOURCE_FILES[@]} -eq 0 ]]; then
  echo "Error: no Markdown links were found in $SUMMARY_FILE" >&2
  exit 1
fi

for source_file in "${SOURCE_FILES[@]}"; do
  if [[ "$source_file" == http://* || "$source_file" == https://* ]]; then
    echo "Error: SUMMARY.md contains a non-local Markdown target: $source_file" >&2
    exit 1
  fi
  if [[ ! -f "$SOURCE_DIR/$source_file" ]]; then
    echo "Error: linked source file not found: $SOURCE_DIR/$source_file" >&2
    exit 1
  fi
done

mkdir -p "$PDF_DIR"
echo "Building course PDF from ${#SOURCE_FILES[@]} SUMMARY.md entries..."
echo "  Template: $PANDOC_TEMPLATE"
echo "  Engine:   $PDF_ENGINE"
echo "  Output:   $OUTPUT_FILE"
echo ""

cd "$SOURCE_DIR"
pandoc "${SOURCE_FILES[@]}" \
  --from=native \
  --output="$OUTPUT_FILE" \
  --data-dir="$PANDOC_DATA_DIR" \
  --template "$PANDOC_TEMPLATE" \
  --syntax-highlighting idiomatic \
  --number-sections \
  --toc \
  --toc-depth=3 \
  --pdf-engine="$PDF_ENGINE" \
  --resource-path="$SOURCE_DIR" \
  -V book

echo ""
echo "PDF build complete: $OUTPUT_FILE"
