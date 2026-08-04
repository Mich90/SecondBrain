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
        
        # Aktuellen Branch ermitteln (z.B. main oder master)
        $Branch = (git branch --show-current).Trim()
        
        if ($Branch) {
            # 1. Pull mit explizitem Remote & Branch (verhindert den 'multiple branches'-Fehler)
            git pull origin $Branch --rebase --quiet

            # 2. Prüfen, ob lokale Änderungen vorliegen
            $Status = git status --porcelain
            if ($Status) {
                git add -A
                git commit -m "$CommitMessage" --quiet
                git push origin $Branch --quiet
            }
        }
    }
}