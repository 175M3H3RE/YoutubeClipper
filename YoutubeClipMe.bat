@echo on
for /f "tokens=*" %%i in ('powershell -c "(Get-clipboard)"') do set string="%%i"
echo %string%|find /v /i "youtube.com"&&(echo %string% >Url.old.txt)

echo %string%|find /v /i "youtube.com"&&(echo.Error: Invalid Url>>Url.old.txt&echo. Make Sure U copy a Valid Url>>Url.old.txt&exit)
for /f "tokens=*" %%i in (%string%) do echo %%i>Url.old.txt
echo.String is %string%
for /f "tokens=5 delims=.:?/" %%i in (%string%) do set watchis=%%i
echo Watchis: %watchis%
if DEFINED watchis if /i "%watchis%"=="watch" for /f "tokens=7 delims=.:?/^=&" %%i in (%string%) DO set tokenv=%%i
echo Spitting....
echo. Token=%tokenv%
if DEFINED tokenv echo.https://www.youtube.com/watch?v=%tokenv% | Clip
REM https://www.Youtube.com/watch?v=d0ZuRK7Vg1U&list=RDWbSxzqA8QrA&index=22

