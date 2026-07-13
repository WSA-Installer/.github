# GitHub Labels Setup Script
# Run this script to set up labels, milestones, and discussions categories
# for your GitHub repositories using the GitHub CLI (gh).

# Prerequisites:
# - GitHub CLI (gh) installed and authenticated
# - Repository created on GitHub

# Usage:
#   .\setup-labels.ps1 <owner/repo>

param(
    [Parameter(Mandatory=$true)]
    [string]$Repo
)

Write-Host "Setting up labels for $Repo..." -ForegroundColor Cyan

# Labels
$labels = @(
    @{ name="bug"; color="d73a4a"; description="Something isn't working" },
    @{ name="enhancement"; color="a2eeef"; description="New feature or request" },
    @{ name="documentation"; color="0075ca"; description="Improvements or additions to documentation" },
    @{ name="good first issue"; color="7057ff"; description="Good for newcomers" },
    @{ name="help wanted"; color="008672"; description="Extra attention is needed" },
    @{ name="question"; color="d876e3"; description="Further information is requested" },
    @{ name="wontfix"; color="ffffff"; description="This will not be worked on" },
    @{ name="duplicate"; color="cfd3d7"; description="This issue already exists" },
    @{ name="installation"; color="fbca04"; description="Related to installation process" },
    @{ name="wsa"; color="1a7f37"; description="Related to WSA core" },
    @{ name="play-store"; color="3DDC84"; description="Related to Play Store integration" },
    @{ name="background-service"; color="0078D4"; description="Related to WSABackgroundService" },
    @{ name="file-sharing"; color="6f42c1"; description="Related to WebDAV file sharing" },
    @{ name="ui"; color="e4e669"; description="Related to GUI/interface" },
    @{ name="build"; color="bfd4f2"; description="Related to build pipeline" },
    @{ name="security"; color="ee0701"; description="Security-related issue" },
    @{ name="priority:high"; color="b60205"; description="High priority" },
    @{ name="priority:medium"; color="fbca04"; description="Medium priority" },
    @{ name="priority:low"; color="0e8a16"; description="Low priority" },
    @{ name="triage"; color="ededed"; description="Needs initial review" }
)

foreach ($label in $labels) {
    $existing = gh label list --repo $Repo --json name | ConvertFrom-Json | Where-Object { $_.name -eq $label.name }
    if ($existing) {
        Write-Host "  Label '$($label.name)' already exists, updating..." -ForegroundColor Yellow
        gh label edit $label.name --repo $Repo --color $label.color --description $label.description
    } else {
        Write-Host "  Creating label '$($label.name)'..." -ForegroundColor Green
        gh label create $label.name --repo $Repo --color $label.color --description $label.description
    }
}

Write-Host ""
Write-Host "Setting up milestones..." -ForegroundColor Cyan

# Milestones
$milestones = @(
    @{ title="v1.3.0"; description="Next release — new features" },
    @{ title="v1.2.x"; description="Bug fixes and patches" },
    @{ title="Documentation"; description="Documentation improvements" },
    @{ title="Website"; description="GitHub Pages website" },
    @{ title="Testing"; description="Test coverage improvements" }
)

foreach ($ms in $milestones) {
    $existing = gh api "repos/$Repo/milestones?state=all" | ConvertFrom-Json | Where-Object { $_.title -eq $ms.title }
    if ($existing) {
        Write-Host "  Milestone '$($ms.title)' already exists" -ForegroundColor Yellow
    } else {
        Write-Host "  Creating milestone '$($ms.title)'..." -ForegroundColor Green
        gh api "repos/$Repo/milestones" -f title=$ms.title -f description=$ms.description -f state=open
    }
}

Write-Host ""
Write-Host "Setup complete!" -ForegroundColor Green
Write-Host "Repository: https://github.com/$Repo" -ForegroundColor Cyan
