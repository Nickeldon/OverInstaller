@echo off
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs

echo sLinkFile = "%HOMEDRIVE%%HOMEPATH%\Desktop\OverPrompt.lnk" >> CreateShortcut.vbs

echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs

echo oLink.TargetPath = "%appdata%\OverPrompt\OverPrompt" >> CreateShortcut.vbs

echo oLink.Save >> CreateShortcut.vbs

cscript CreateShortcut.vbs

del CreateShortcut.vbs

pause