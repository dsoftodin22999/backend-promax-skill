# Backend Pro Max Skill Installer
# Cách dùng: .\install_to_project.ps1 -TargetProject "C:\du-an-cua-ban"

param (
    [Parameter(Mandatory=$true)]
    [string]$TargetProject
)

if (-not (Test-Path $TargetProject)) {
    Write-Error "Dường dẫn dự án không tồn tại: $TargetProject"
    exit
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
    ".cursorrules",
    "CLAUDE.md",
    "README.md"
)

Write-Host "`n====================================================" -ForegroundColor Cyan
Write-Host "   BACKEND PRO MAX v2.0 - INSTALLER" -ForegroundColor White -BackgroundColor Blue
Write-Host "   (c) 2026 Odin from Dsoft Team" -ForegroundColor Cyan
Write-Host "====================================================`n" -ForegroundColor Cyan

Write-Host "Target Project: $TargetProject" -ForegroundColor Yellow

foreach ($item in $ItemsToCopy) {
    $source = Join-Path $PSScriptRoot $item
    $dest = Join-Path $TargetProject $item
    
    if (Test-Path $source) {
        Write-Host "[COPYING] $item..." -ForegroundColor Gray
        Copy-Item -Path $source -Destination $dest -Recurse -Force
    }
}

Write-Host "`n[SUCCESS] Backend Pro Max Skill v2.0 đã được tích hợp!" -ForegroundColor Green
Write-Host "----------------------------------------------------" -ForegroundColor Cyan
Write-Host "CÁCH SỬ DỤNG:" -ForegroundColor White
Write-Host "1. Mở dự án bằng Cursor, Claude Code, hoặc Windsurf."
Write-Host "2. Dùng lệnh '/backend-pro-max' để thiết kế hệ thống."
Write-Host "3. Kiểm tra file 'BACKEND_MASTER.md' để xem kiến trúc."
Write-Host "----------------------------------------------------`n" -ForegroundColor Cyan
