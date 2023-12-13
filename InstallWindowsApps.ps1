# Copyright © Ayhan Yuseinov, info@ayhan.be. All rights reserved.

# Create the directory for the installers
$InstallersDirectory = "C:\My Programs\Installers (exe)"
if (!(Test-Path -Path $InstallersDirectory -PathType Container)) {
    New-Item -ItemType Directory -Path $InstallersDirectory
}



# Check if Chocolatey is installed
if (!(Get-Command choco.exe -ErrorAction SilentlyContinue)) {
    # Install Chocolatey
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}



choco install googlechrome -y


choco install firefox -y


choco install git -y



choco install python -y



choco install nodejs -y



choco install vscode -y



choco install microsoft-teams -y



# PhpStorm
$PhpStorm = 'https://download.jetbrains.com/webide/PhpStorm-2020.3.3.exe'
$PhpStormPath = Join-Path $InstallersDirectory 'PhpStorm.exe'

# Download the PhpStorm installer
Invoke-WebRequest -Uri $PhpStorm -OutFile $PhpStormPath

# Install PhpStorm
Start-Process -FilePath $PhpStormPath -ArgumentList "/S" -Wait



# PyCharm Professional Edition
$PyCharm = 'https://download.jetbrains.com/python/pycharm-professional-2020.3.3.exe'
$PyCharmPath = Join-Path $InstallersDirectory 'PyCharm.exe'
Invoke-WebRequest -Uri $PyCharm -OutFile $PyCharmPath
Start-Process -FilePath $PyCharmPath -ArgumentList "/S" -Wait



# IntelliJ
$IntelliJ = 'https://download.jetbrains.com/idea/ideaIU-2020.3.3.exe'
$IntelliJPath = Join-Path $InstallersDirectory 'IntelliJ.exe'
Invoke-WebRequest -Uri $IntelliJ -OutFile $IntelliJPath
Start-Process -FilePath $IntelliJPath -ArgumentList '/S' -Wait



# Windows Terminal
choco install microsoft-windows-terminal -y



choco install postman -y



# Wireshark
#choco install wireshark -y # -> a lot of lines telling you what happens
choco install wireshark --installargs '"/S"' -y



choco install putty -y



choco install discord -y



choco install wd-dashboard -y
choco install intel-xtu -y