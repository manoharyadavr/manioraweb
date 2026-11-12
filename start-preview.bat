@echo off
cd /d "%~dp0"
where python >nul 2>nul && (start "" http://localhost:8000 & python -m http.server 8000 & exit /b)
where npx >nul 2>nul && (start "" http://localhost:3000 & npx --yes serve -l 3000 . & exit /b)
echo Install Python or Node.js, or use VS Code Live Server.
pause
