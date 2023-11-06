@echo on
for /f "tokens=*" %%i in ('powershell -c "(Get-clipboard)"') do set string="%%i"
echo.%string% >Url.old.txt
echo.String is %string%
for /f "tokens=5 delims=.:?/^=&" %%i in (%string%) do set watchis=%%i

for /f "tokens=8 delims=.:?/^=&" %%i in (%string%) do set listis=%%i
echo Watchis: %watchis%
echo Listis: %listis%
if DEFINED watchis if /i "%watchis%"=="watch" for /f "tokens=7 delims=.:?/^=&" %%i in (%string%) DO set tokenv=%%i
if DEFINED listis for /f "tokens=9 delims=.:?/^=&" %%i in (%string%) DO set listtok=%%i
echo Spitting....
echo. Token=%tokenv%
if DEFINED listtok echo.https://www.youtube.com/watch?v=%tokenv%^^^&list=%listtok% | Clip
if NOT DEFINED listtok echo.https://www.youtube.com/watch?v=%tokenv% | Clip
REM https://www.Youtube.com/watch?v=d0ZuRK7Vg1U&list=RDWbSxzqA8QrA&index=22


