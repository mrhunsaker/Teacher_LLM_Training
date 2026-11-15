#!/usr/bin/env bash
# Generate mdBook HTML and the companion Pandoc PDF.
set -e
SCRIPTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BOOKDIR="$SCRIPTDIR/my-book"
BUILDOUTPUT="$BOOKDIR/docs"

if ! command -v mdbook &> /dev/null; then
    echo "Error: mdbook is not installed."
    echo "Please install mdbook with one of the following:"
    echo "  - cargo install mdbook"
    echo "  - brew install mdbook (macOS)"
    echo "  - Or download from https://github.com/rust-lang/mdBook/releases"
    exit 1
fi
if [ ! -f "$BOOKDIR/book.toml" ]; then
    echo "Error: book.toml not found at $BOOKDIR/book.toml"
    exit 1
fi
mkdir -p "$BUILDOUTPUT"

echo "Building mdbook..."
echo "  Source: $BOOKDIR/src/"
echo "  Output: $BUILDOUTPUT"
echo ""
cd "$BOOKDIR"
RUST_BACKTRACE=full mdbook build --dest-dir "$BUILDOUTPUT"

echo ""
echo "Building the companion Pandoc PDF..."
"$SCRIPTDIR/pandoc_generate.sh"
echo ""
echo "All builds complete!"
echo " HTML output: $BUILDOUTPUT"
echo " PDF output:  $BOOKDIR/docs/pandoc/pdf/TeacherLLMTraining.pdf"
