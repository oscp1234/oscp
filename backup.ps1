# Navigate to the OSCP directory
Set-Location "C:\Users\DELL\Videos\OSCP Journey\OSCP"

# Add all changes to the staging area
git add .

# Commit the changes with a timestamp
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
git commit -m "Automatic backup - $timestamp"

# Push the changes to the remote repository
git push origin master

# Log the result
Write-Output "Backup completed at $timestamp" >> "C:\Users\DELL\Videos\OSCP Journey\OSCP\backup.log"