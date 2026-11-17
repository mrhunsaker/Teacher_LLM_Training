#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

SOURCE_DIR="$SCRIPT_DIR/my-book/docs/pandoc/pdf/src"
OUTPUT_FILE="$SCRIPT_DIR/my-book/docs/pandoc/pdf/TeacherLLMTraining_Templated.pdf"

mapfile -t SOURCE_FILES < <(
    sed -nE 's/.*\]\(([^)]*\.md)(#[^)]*)?\).*/\1/p' \
        "$SOURCE_DIR/SUMMARY.md"
)

cd "$SOURCE_DIR"

pandoc "${SOURCE_FILES[@]}" \
    --from=markdown \
    --output="$OUTPUT_FILE" \
    --syntax-highlighting idiomatic \
    --number-sections \
    --toc \
    --toc-depth=3 \
    --pdf-engine=xelatex \
    --include-in-header="$SCRIPT_DIR/my-book/src/pdf-style.tex" \
    --resource-path="$SOURCE_DIR" \
    -V documentclass=book \
    -V classoption=twoside \
    --verbose
