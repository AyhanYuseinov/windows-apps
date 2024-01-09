# Install Windows Apps Automated

## Features
https://oneclickdevstack.ayhan.be/

## Prerequisites
Windows 10

## Installation

2 methods:
* run powershell script
* download powershell script, convert powershell script to exe, and run the exe

### Run PowerShell script

Open PowerShell  

navigate to the directory where you want to save the script (in my case C:\ drive)
```powershell
cd ../../
```

```powershell
mkdir 'My Programs\PowerShell Scripts'
```

Download powershell script  
```powershell
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/AyhanYuseinov/windows-apps/main/InstallWindowsApps.ps1" -OutFile "C:\My Programs\PowerShell Scripts\InstallWindowsApps.ps1"
```

Open PowerShell as Administrator  

```powershell
cd '..\..\My Programs\PowerShell Scripts\'
```

Enable script execution  
```powershell
Set-ExecutionPolicy RemoteSigned
```
type `Y` and press Enter

Run script
```powershell
.\InstallWindowsApps.ps1
```

### Download powershell script, convert powershell script to exe, and run the exe

Open PowerShell  

navigate to the directory where you want to save the script (in my case C:\ drive)
```powershell
cd ../../
```

```powershell
mkdir 'My Programs\PowerShell Scripts'
```

Download powershell script  
```powershell
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/AyhanYuseinov/windows-apps/main/InstallWindowsApps.ps1" -OutFile "C:\My Programs\PowerShell Scripts\InstallWindowsApps.ps1"
```

Open PowerShell as Administrator  

```powershell
cd '..\..\My Programs\PowerShell Scripts\'
```

Install ps2exe  
```powershell
Install-Module ps2exe
```
type `Y` and press Enter (2 times)

Enable script execution  
```powershell
Set-ExecutionPolicy RemoteSigned
```
type `Y` and press Enter

Convert PowerShell script to Exe  
```powershell
ps2exe InstallWindowsApps.ps1 InstallWindowsApps.exe
```

Navigate to `C:\My Programs\PowerShell Scripts`  
Run InstallWindowsApps.exe as Administrator

## Licence
Copyright © Ayhan Yuseinov, info@ayhan.be. All rights reserved.