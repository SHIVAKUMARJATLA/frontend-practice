@echo off
SET /P msg="Enter commit message: "
git add .
git commit -m "%msg%"
git push origin main
pause
