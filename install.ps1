# PowerShell installer for vak-rb-citations skill
param (
    [ValidateSet("claude", "antigravity", "cursor", "all")]
    [string]$Target = "all",
    [string]$RepoUrl = "https://raw.githubusercontent.com/Sargon-II/VAK-RB-2025-skill/main/vak-rb-citations",
    [switch]$Global = $true
)

$ErrorActionPreference = "Stop"

Write-Host "=== Установка скилла ВАК РБ 2025 (vak-rb-citations) ===" -ForegroundColor Cyan

# Проверяем, запущен ли скрипт локально или через 'irm | iex'
$ScriptDir = if ($MyInvocation.MyCommand.Path) { Split-Path -Parent $MyInvocation.MyCommand.Path } else { $null }
$LocalSource = if ($ScriptDir) { Join-Path $ScriptDir "vak-rb-citations" } else { $null }

$Files = @("SKILL.md", "RULES.md", "vak_rb_2025_examples.json")

function Install-Skill([string]$destPath, [string]$targetName) {
    if (-not (Test-Path $destPath)) {
        New-Item -ItemType Directory -Path $destPath -Force | Out-Null
    }

    if ($LocalSource -and (Test-Path (Join-Path $LocalSource "SKILL.md"))) {
        Copy-Item -Path "$LocalSource\*" -Destination $destPath -Recurse -Force
    } else {
        foreach ($file in $Files) {
            $url = "$RepoUrl/$file"
            $out = Join-Path $destPath $file
            Invoke-RestMethod -Uri $url -OutFile $out
        }
    }
    Write-Host "[OK] Установлено для $targetName: $destPath" -ForegroundColor Green
}

if ($Target -eq "claude" -or $Target -eq "all") {
    $claudePath = if ($Global) { Join-Path $HOME ".claude\skills\vak-rb-citations" } else { Join-Path (Get-Location) ".claude\skills\vak-rb-citations" }
    Install-Skill $claudePath "Claude Code"
}

if ($Target -eq "antigravity" -or $Target -eq "all") {
    $antigravityPath = if ($Global) { Join-Path $HOME ".gemini\config\skills\vak-rb-citations" } else { Join-Path (Get-Location) ".gemini\skills\vak-rb-citations" }
    Install-Skill $antigravityPath "Antigravity"
    
    $agentsPath = if ($Global) { Join-Path $HOME ".agents\skills\vak-rb-citations" } else { Join-Path (Get-Location) ".agents\skills\vak-rb-citations" }
    Install-Skill $agentsPath "Universal Agents (.agents)"
}

if ($Target -eq "cursor" -or $Target -eq "all") {
    $cursorPath = if ($Global) { Join-Path $HOME ".cursor\skills\vak-rb-citations" } else { Join-Path (Get-Location) ".cursor\skills\vak-rb-citations" }
    Install-Skill $cursorPath "Cursor"
}

Write-Host "`nГотово! Скилл успешно установлен и готов к использованию." -ForegroundColor Cyan
