Set objShell = CreateObject("WScript.Shell")
strScriptPath = Replace(WScript.ScriptFullName, ".vbs", ".ps1")
objShell.Run "powershell.exe -NoProfile -ExecutionPolicy Bypass -File """ & strScriptPath & """", 0, False
