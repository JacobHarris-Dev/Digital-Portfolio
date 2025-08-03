# push.ps1
# Prompt for a commit message
$commitMessage = Read-Host "Enter commit message"

if ([string]::IsNullOrWhiteSpace($commitMessage)) {
    Write-Host "Commit message is required." -ForegroundColor Red
    exit 1
}

# Add, commit, and push
git add .
git commit -m "$commitMessage"
git push

Write-Host "Changes pushed successfully!" -ForegroundColor Green