# PowerShell version of mdbook_generate.sh
# Generates mdBook HTML and the companion Pandoc PDF.
$ErrorActionPreference = 'Stop'
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$BookDir = Join-Path $ScriptDir 'my-book'
$BuildOutput = Join-Path $BookDir 'docs'

if (-not (Get-Command mdbook -ErrorAction SilentlyContinue)) {
    Write-Host "Error: mdbook is not installed." -ForegroundColor Red
    Write-Host "Please install mdbook with one of the following:"
    Write-Host "  - cargo install mdbook"
    Write-Host "  - Or download from https://github.com/rust-lang/mdBook/releases"
    exit 1
}
if (-not (Test-Path (Join-Path $BookDir 'book.toml'))) {
    throw "book.toml not found at $BookDir\book.toml"
}
if (-not (Test-Path $BuildOutput)) {
    New-Item -ItemType Directory -Path $BuildOutput -Force | Out-Null
}

Write-Host 'Building mdBook...'
Write-Host "  Source: $BookDir\src\"
Write-Host "  Output: $BuildOutput"
Write-Host ''
Push-Location $BookDir
try {
    $env:RUST_BACKTRACE = 'full'
    & mdbook build --dest-dir $BuildOutput
    if ($LASTEXITCODE -ne 0) {
        throw "mdBook build failed with exit code $LASTEXITCODE."
    }
}
finally {
    Pop-Location
}

Write-Host ''
Write-Host 'Building the companion Pandoc PDF...'
& (Join-Path $ScriptDir 'pandoc_generate.ps1')
if ($LASTEXITCODE -ne 0) {
    throw "Pandoc PDF build failed with exit code $LASTEXITCODE."
}
Write-Host ''
Write-Host 'All builds complete!'
Write-Host " HTML output: $BuildOutput"
Write-Host " PDF output:  $(Join-Path $BookDir 'docs/pandoc/pdf/TeacherLLMTraining.pdf')"
