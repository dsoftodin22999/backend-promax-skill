# Backend Pro Max Skill - Local Project Installer
# Usage: .\install_to_project.ps1 -TargetProject "C:\path\to\your\project"

param (
    [Parameter(Mandatory=$true)]
    [string]$TargetProject
)

if (-not (Test-Path $TargetProject)) {
    Write-Error "Project path does not exist: $TargetProject"
    exit 1
}

$ItemsToCopy = @(
    ".claude",
    ".cursor",
    ".windsurf",
    ".trae",
    ".agent",
    ".github",
    ".kiro",
    ".codex",
    ".qoder",
    ".roo",
    ".gemini",
    ".shared",
    ".cursorrules"
)

Write-Host "`n====================================================" -ForegroundColor Cyan
Write-Host "   BACKEND PRO MAX v2.0 - LOCAL INSTALLER" -ForegroundColor White -BackgroundColor DarkBlue
Write-Host "   Backend Intelligence for AI Coding Agents" -ForegroundColor Cyan
Write-Host "====================================================`n" -ForegroundColor Cyan

Write-Host "Target Project: $TargetProject" -ForegroundColor Yellow
Write-Host ""

$successCount = 0

foreach ($item in $ItemsToCopy) {
    $source = Join-Path $PSScriptRoot $item
    $dest = Join-Path $TargetProject $item
    
    if (Test-Path $source) {
        Write-Host "[COPYING] $item..." -ForegroundColor Gray
        Copy-Item -Path $source -Destination $dest -Recurse -Force
        $successCount++
    }
}

Write-Host "`n[SUCCESS] Backend Pro Max Skill v2.0 installed!" -ForegroundColor Green
Write-Host "Copied $successCount components to your project." -ForegroundColor Gray
Write-Host "----------------------------------------------------" -ForegroundColor Cyan
Write-Host "NEXT STEPS:" -ForegroundColor White
Write-Host "1. Open your project in Cursor, Claude Code, or Windsurf."
Write-Host "2. Use the '/backend-pro-max' command to generate system design."
Write-Host "3. View the generated architecture in 'BACKEND_MASTER.md'."
Write-Host "----------------------------------------------------`n" -ForegroundColor Cyan
