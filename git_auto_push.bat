@echo off
echo Syncing with GitHub...

:: Step 1: Pull latest changes with rebase
echo Pulling latest changes...
git pull origin main --rebase

:: Step 2: Add and commit your local changes
SET /P msg="Enter commit message: "
git add .
git commit -m "%msg%"

:: Step 3: Push to GitHub
echo Pushing changes to GitHub...
git push origin main

echo ✅ Done! Your code is now up to date on GitHub.
pause
