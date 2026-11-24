@echo off
chcp 65001 > nul
cd /d "%~dp0"
title A-Frame 3D 로컬 서버
echo ========================================================
echo   로컬 웹 서버를 실행합니다...
echo   잠시 후 웹 브라우저가 자동으로 열립니다.
echo   (작업을 끝내려면 이 창을 닫아주세요)
echo ========================================================
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0server.ps1"
pause
