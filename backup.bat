@echo off
:: Define the timestamp
for /f "tokens=1-4 delims=/ " %%a in ('date /t') do set timestamp=%%d-%%b-%%a
for /f "tokens=1-3 delims=: " %%a in ('time /t') do set timestamp=%timestamp% %%a:%%b:%%c

:: Navigate to the OSCP directory
cd "C:\Users\DELL\Videos\OSCP Journey\OSCP"

:: Add all changes to the staging area
git add .

:: Commit the changes with a timestamped message
git commit -m "Automatic backup - %timestamp%"

:: Push the changes to the remote repository
git push https://github.com/oscp1234/oscp.git

:: Log the result
echo Backup completed at %timestamp% >> "C:\Users\DELL\Videos\OSCP Journey\OSCP\backup.log"

:: Optional: Print a confirmation message
echo Backup completed successfully at %timestamp%