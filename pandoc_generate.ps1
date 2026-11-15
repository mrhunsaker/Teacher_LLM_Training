# Build the standalone course PDF using Pandoc and the Eisvogel template.
# This is the PowerShell counterpart to pandoc_generate.sh.

$ErrorActionPreference = 'Stop'
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$PdfDir = Join-Path $ScriptDir 'my-book/docs/pandoc/pdf'
$SourceDir = Join-Path $PdfDir 'src'
$OutputFile = Join-Path $PdfDir 'TeacherLLMTraining.pdf'

if (-not (Get-Command pandoc -ErrorAction SilentlyContinue)) {
    throw "Required command 'pandoc' was not found in PATH."
}
if (-not (Get-Command xelatex -ErrorAction SilentlyContinue)) {
    throw "Required command 'xelatex' was not found in PATH."
}

# Pandoc searches <data-dir>\templates for named templates. Prefer the
# project-configured home-directory location, then standard Windows AppData.
if ($env:PANDOC_DATA_DIR) {
    $PandocDataDir = $env:PANDOC_DATA_DIR
} else {
    $HomePandocDir = Join-Path $env:USERPROFILE '.local/share/pandoc'
    $AppDataPandocDir = Join-Path $env:APPDATA 'pandoc'
    if (Test-Path (Join-Path $HomePandocDir 'templates/eisvogel.latex')) {
        $PandocDataDir = $HomePandocDir
    } else {
        $PandocDataDir = $AppDataPandocDir
    }
}
$TemplateFile = Join-Path $PandocDataDir 'templates/eisvogel.latex'
if (-not (Test-Path $TemplateFile)) {
    throw "Eisvogel template not found: $TemplateFile. Set PANDOC_DATA_DIR to the directory containing the templates folder."
}
if (-not (Test-Path (Join-Path $SourceDir 'SUMMARY.md'))) {
    throw "PDF source index not found: $(Join-Path $SourceDir 'SUMMARY.md')"
}

# Keep this list in the same order as SUMMARY.md. SUMMARY.md is an index,
# not content; summary.md is the actual course overview chapter.
$SourceFiles = @(
    'summary.md',
    'course-map-and-assessment-plan.md',
    'getting-started.md',
    'multidisciplinary-case-studies.md',
    '01-prompting.md',
    '02-iep-goals.md',
    '03-data-collection.md',
    '04-excel-monitoring.md',
    '05-data-based-decisions.md',
    '06-copilot-email.md',
    '09-ai-literacy-foundations.md',
    '10-misconceptions-and-failure-analysis.md',
    '11-critical-evaluation-lab.md',
    '12-independent-performance-capstone.md',
    '08-final-workbook.md',
    'participant-assessments.md',
    'ai-literacy-assessment.md',
    'participant-lesson-handouts.md',
    'practical-competency-checklist.md',
    'accessibility-and-release-checklist.md',
    'facilitator-practice-edition.md',
    'ai-literacy-facilitator-guide.md',
    'prompt-library.md',
    'practice-labs.md',
    'responsible-use-and-implementation.md',
    'references.md'
)
foreach ($SourceFile in $SourceFiles) {
    $FullSourcePath = Join-Path $SourceDir $SourceFile
    if (-not (Test-Path $FullSourcePath)) {
        throw "Required PDF source file not found: $FullSourcePath"
    }
}
if (-not (Test-Path $PdfDir)) {
    New-Item -ItemType Directory -Path $PdfDir -Force | Out-Null
}

Write-Host 'Building course PDF...'
Write-Host "  Sources: $SourceDir"
Write-Host "  Output:  $OutputFile"
Write-Host ''
$PandocArgs = @()
$PandocArgs += $SourceFiles
$PandocArgs += @(
    "--output=$OutputFile",
    "--data-dir=$PandocDataDir",
    '--template', 'eisvogel',
    '--syntax-highlighting', 'idiomatic',
    '--number-sections',
    '--toc',
    '--toc-depth=3',
    '--pdf-engine=xelatex',
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
