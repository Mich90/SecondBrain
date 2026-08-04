# --- CONFIGURATION ---
$Repos = @(
    "C:\Source\0_SecondBrain",
    "C:\Source\0_SecondBrain\MR_Brain\01 Shared"
)
$CommitMessage = "Auto-Sync: $(Get-Date -Format 'yyyy-MM-dd HH:mm')"

# --- SYNC LOOP ---
foreach ($Repo in $Repos) {
    if (Test-Path "$Repo\.git") {
        Set-Location -Path $Repo
        
        # 1. Neueste Änderungen holen (rebase verhindert Unordnung im Verlauf)
        git pull --rebase --quiet

        # 2. Prüfen, ob lokale Änderungen vorliegen
        $Status = git status --porcelain
        if ($Status) {
            git add -A
            git commit -m "$CommitMessage" --quiet
            git push --quiet
        }
    }
}