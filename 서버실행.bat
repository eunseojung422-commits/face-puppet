@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo 로컬 서버를 켜는 중...
start "FacePuppet Server" cmd /k "python -m http.server 8000 || py -m http.server 8000"

timeout /t 2 /nobreak >nul
start "" "http://localhost:8000/%%EC%%96%%BC%%EA%%B5%%B4%%EC%%99%%84%%EC%%84%%B1.html"

echo.
echo 브라우저 창이 안 뜨면 http://localhost:8000/ 로 직접 들어가세요.
echo 서버를 끄려면 방금 뜬 검은 창(FacePuppet Server)을 닫으면 됩니다.