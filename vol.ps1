$vbsCode = @'
Set WshShell = CreateObject("WScript.Shell")
WshShell.SendKeys(chr(&hAD))
'@

$vbsFile = [System.IO.Path]::GetTempFileName() + ".vbs"
[System.IO.File]::WriteAllText($vbsFile, $vbsCode)

cscript //nologo $vbsFile
Remove-Item $vbsFile
