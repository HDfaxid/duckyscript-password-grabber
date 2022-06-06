$usbPath = Get-WMIObject Win32_Volume | ? { $_.Label -eq 'DUCKY' } | select name
Copy-Item -r -Path $pwd/resources/bin -Destination $usbPath.name -PassThru
Copy-Item -Path $pwd/resources/open.bat -Destination $usbPath.name -PassThru
Copy-Item -Path $pwd/resources/web.ps1 -Destination $usbPath.name -PassThru
