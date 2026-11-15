# Build the course PDF using the ordered Markdown links in SUMMARY.md.
$ErrorActionPreference = 'Stop'

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$PdfDir = Join-Path $ScriptDir 'my-book/docs/pandoc/pdf'
$SourceDir = Join-Path $PdfDir 'src'
$SummaryFile = Join-Path $SourceDir 'SUMMARY.md'
$OutputFile = Join-Path $PdfDir 'TeacherLLMTraining.pdf'
$EnvFile = Join-Path $ScriptDir '.env'

if (-not (Test-Path $EnvFile)) {
    throw "Configuration file not found: $EnvFile. Copy .env.example to .env and set your local Pandoc data directory."
}

# Read simple KEY=value entries from .env. Existing process variables are
# overridden so the checked-in example and local file are the source of truth.
foreach ($Line in Get-Content $EnvFile) {
    $Trimmed = $Line.Trim()
    if (-not $Trimmed -or $Trimmed.StartsWith('#')) { continue }
    if ($Trimmed -notmatch '^([A-Za-z_][A-Za-z0-9_]*)\s*=\s*(.*)$') {
        throw "Invalid .env entry: $Line"
    }
    $Name = $Matches[1]
    $Value = $Matches[2].Trim()
    if (($Value.StartsWith('"') -and $Value.EndsWith('"')) -or
        ($Value.StartsWith("'") -and $Value.EndsWith("'"))) {
        $Value = $Value.Substring(1, $Value.Length - 2)
    }
    [Environment]::SetEnvironmentVariable($Name, $Value, 'Process')
}

$PandocDataDir = $env:PANDOC_DATA_DIR
$PandocTemplate = if ($env:PANDOC_TEMPLATE) { $env:PANDOC_TEMPLATE } else { 'eisvogel' }
$PdfEngine = if ($env:PDF_ENGINE) { $env:PDF_ENGINE } else { 'xelatex' }
if ([string]::IsNullOrWhiteSpace($PandocDataDir)) {
    throw "PANDOC_DATA_DIR must be set in $EnvFile."
}
if (-not (Get-Command pandoc -ErrorAction SilentlyContinue)) {
    throw "Required command 'pandoc' was not found in PATH."
}
if (-not (Get-Command $PdfEngine -ErrorAction SilentlyContinue)) {
    throw "Required PDF engine '$PdfEngine' was not found in PATH."
}
$TemplateFile = Join-Path (Join-Path $PandocDataDir 'templates') "$PandocTemplate.latex"
if (-not (Test-Path $TemplateFile)) {
    throw "Pandoc template not found: $TemplateFile"
}
if (-not (Test-Path $SummaryFile)) {
    throw "Source index not found: $SummaryFile"
}

# Extract local Markdown targets from SUMMARY.md in document order. This file
# is the source of truth; chapter ordering is not duplicated in this script.
$SourceFiles = [System.Collections.Generic.List[string]]::new()
foreach ($Line in Get-Content $SummaryFile) {
    foreach ($Match in [regex]::Matches($Line, '\]\(([^)]+\.md)(?:#[^)]*)?\)')) {
        $Target = $Match.Groups[1].Value
        if ($Target -match '^https?://') {
            throw "SUMMARY.md contains a non-local Markdown target: $Target"
        }
        $SourceFiles.Add($Target)
    }
}
if ($SourceFiles.Count -eq 0) {
    throw "No Markdown links were found in $SummaryFile"
}
foreach ($SourceFile in $SourceFiles) {
    $FullSourcePath = Join-Path $SourceDir $SourceFile
    if (-not (Test-Path $FullSourcePath)) {
        throw "Linked source file not found: $FullSourcePath"
    }
}

Write-Host "Building course PDF from $($SourceFiles.Count) SUMMARY.md entries..."
Write-Host "  Template: $PandocTemplate"
Write-Host "  Engine:   $PdfEngine"
Write-Host "  Output:   $OutputFile"
Write-Host ''

$PandocArgs = @()
$PandocArgs += $SourceFiles.ToArray()
$PandocArgs += @(
    '--from=native',
    "--output=$OutputFile",
    "--data-dir=$PandocDataDir",
    '--template', $PandocTemplate,
    '--syntax-highlighting', 'idiomatic',
    '--number-sections',
    '--toc',
    '--toc-depth=3',
    "--pdf-engine=$PdfEngine",
    "--resource-path=$SourceDir",
    '-V', 'book'
)

Push-Location $SourceDir
try {
    & pandoc @PandocArgs
    if ($LASTEXITCODE -ne 0) {
        throw "Pandoc PDF build failed with exit code $LASTEXITCODE."
    }
}
finally {
    Pop-Location
}
Write-Host ''
Write-Host "PDF build complete: $OutputFile"
