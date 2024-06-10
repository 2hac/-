Set objFSO = CreateObject("Scripting.FileSystemObject")
strScriptPath = objFSO.GetAbsolutePathName(WScript.ScriptFullName)
strScriptFolder = objFSO.GetParentFolderName(strScriptPath)
strBatFile = strScriptFolder & "\4.bat"

Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "cmd /c " & Chr(34) & strBatFile & Chr(34), 0, False
Set WshShell = Nothing
