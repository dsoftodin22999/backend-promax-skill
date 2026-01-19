# Backend Pro Max Skill - Windows Installer
# Usage: iwr -useb https://raw.githubusercontent.com/dsoftodin22999/backend-promax-skill/main/install.ps1 | iex

$ErrorActionPreference = "Stop"

Write-Host "`n====================================================" -ForegroundColor Cyan
Write-Host "   BACKEND PRO MAX v2.0 - INSTALLER" -ForegroundColor White -BackgroundColor DarkBlue
Write-Host "   Backend Intelligence for AI Coding Agents" -ForegroundColor Cyan
Write-Host "====================================================`n" -ForegroundColor Cyan

# GitHub Repository Configuration
$RepoUrl = "https://github.com/dsoftodin22999/backend-promax-skill"
$ZipUrl = "$RepoUrl/archive/refs/heads/main.zip"

# Create Temporary Directory
$TempDir = Join-Path $env:TEMP "backend-promax-$(Get-Random)"
New-Item -ItemType Directory -Force -Path $TempDir | Out-Null

$TargetDir = Get-Location

try {
    Write-Host "[1/4] Downloading from GitHub..." -ForegroundColor Yellow
    $ZipPath = Join-Path $TempDir "skill.zip"
    Invoke-WebRequest -Uri $ZipUrl -OutFile $ZipPath -UseBasicParsing
    
    Write-Host "[2/4] Extracting files..." -ForegroundColor Yellow
    Expand-Archive -Path $ZipPath -DestinationPath $TempDir -Force
    
    $ExtractedDir = Join-Path $TempDir "backend-promax-skill-main"
    
    Write-Host "[3/4] Installing to: $TargetDir" -ForegroundColor Yellow
    
    $ItemsToCopy = @(
        ".claude", ".cursor", ".windsurf", ".trae", ".agent", ".github",
        ".kiro", ".codex", ".qoder", ".roo", ".gemini", ".shared", ".cursorrules"
    )
    
    foreach ($item in $ItemsToCopy) {
        $source = Join-Path $ExtractedDir $item
        $dest = Join-Path $TargetDir $item
        if (Test-Path $source) {
            Copy-Item -Path $source -Destination $dest -Recurse -Force
            Write-Host "  [OK] $item" -ForegroundColor Gray
        }
    }
    
    Write-Host "[4/4] Finalizing installation..." -ForegroundColor Yellow
    
    Write-Host "`n[SUCCESS] Backend Pro Max Skill v2.0 installed!" -ForegroundColor Green
    Write-Host "----------------------------------------------------" -ForegroundColor Cyan
    Write-Host "NEXT STEPS:" -ForegroundColor White
    Write-Host "1. Open your project in Cursor, Claude Code, or Windsurf."
    Write-Host "2. Use the '/backend-pro-max' command to generate system design."
    Write-Host "3. View the generated architecture in 'BACKEND_MASTER.md'."
    Write-Host "----------------------------------------------------`n" -ForegroundColor Cyan
}
catch {
    Write-Error "Installation failed: $_"
}
finally {
    if (Test-Path $TempDir) { Remove-Item -Path $TempDir -Recurse -Force }
}
