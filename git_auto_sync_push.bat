@echo off
echo Checking status...
git status

echo.
echo Stashing local changes (if any)...
git stash push -m "auto-stash-before-pull"

echo.
echo Pulling latest changes from GitHub...
git pull origin main --rebase

echo.
echo Re-applying stashed changes...
git stash pop

echo.
SET /P msg="Enter commit message: "
git add .
git commit -m "%msg%"

echo.
echo Pushing to GitHub...
git push origin main

echo.
echo ✅ Done! Your code is now synced with GitHub.
pause
