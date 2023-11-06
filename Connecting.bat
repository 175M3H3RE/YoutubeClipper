@echo on
for /f "tokens=*" %%i in ('powershell -c "(Get-clipboard).ToLower()"') do set string="%%i"
echo.String is %string%
for /f "tokens=5 delims=.:?/" %%i in (%string%) do echo %%i
echo Watchis: %watchis%
if DEFINED watchis if "%watchis%"=="watch" for /f "tokens=7 delims=.:?/^=&" %%i in (%string%) DO set tokenv=%%i
echo Spitting....
echo. Token=%tokenv%
for /f 
https://www.youtube.com/watch?v=%tokenv% | Clip
REM https://www.Youtube.com/watch?v=d0ZuRK7Vg1U&list=RDWbSxzqA8QrA&index=22

