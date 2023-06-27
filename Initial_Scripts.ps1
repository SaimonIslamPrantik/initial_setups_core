Set-ExecutionPolicy Unrestricted
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

iwr -useb https://raw.githubusercontent.com/lstprjct/IDM-Activation-Script/main/IAS.ps1 | iex

cd c:\
mkdir "Initial_Setup"
cd c:\
mkdir "Free Office"

cd c:\Initial_Setup\

Invoke-WebRequest -uri https://raw.githubusercontent.com/SaimonIslamPrantik/initial_setups_core/main/Bloatbox.exe -OutFile "c:\Initial_Setup\Bloatbox.exe"
Invoke-Item "Bloatbox.exe"

# Invoke-WebRequest -uri "https://raw.githubusercontent.com/SaimonIslamPrantik/mnlactv/main/Activator%20MS%20Office.cmd" -OutFile "c:\Initial_Setup\AC_MSO.cmd"
#Invoke-Item "AC_MSO.cmd"

Invoke-WebRequest -uri "https://raw.githubusercontent.com/SaimonIslamPrantik/initial_setups_core/main/CLICK%20HERE%20FOR%20MANUAL%20ACTIVATION.cmd" -OutFile "c:\Initial_Setup\WIN_MSO.cmd"
Invoke-Item "WIN_MSO.cmd"

Invoke-WebRequest -uri "https://raw.githubusercontent.com/ShadowWhisperer/Remove-MS-Edge/main/Remove-Edge.exe" -OutFile "c:\Initial_Setup\Remove-Edge.exe"
Invoke-Item "Remove-Edge.exe"

Invoke-WebRequest -uri "https://raw.githubusercontent.com/SaimonIslamPrantik/initial_setups_core/main/Free%20MS%20Office.zip" -OutFile "c:\Free Office\Click Here.zip"

choco install GoogleChrome Firefox internet-download-manager potplayer parsec handbrake avro-keyboard sharex spotify epicgameslauncher steam goggalaxy discord -y

Invoke-WebRequest -uri "https://github.com/Klocman/Bulk-Crap-Uninstaller/releases/download/v5.6/BCUninstaller_5.6_setup.exe" -OutFile "c:\Initial_Setup\BCUninstaller_setup.exe"
Invoke-Item "BCUninstaller_setup.exe"

Invoke-WebRequest -uri "https://firebasestorage.googleapis.com/v0/b/amd-adrenalin.appspot.com/o/nox_setup_v7.0.5.8_full_intl_2.exe?alt=media&token=30efe434-0db9-4754-a146-c49e89a60415" -OutFile "c:\Initial_Setup\nox_setup.exe"
Invoke-Item "nox_setup.exe"

Invoke-WebRequest -uri "https://firebasestorage.googleapis.com/v0/b/amd-adrenalin.appspot.com/o/amd-software-adrenalin-edition-23.5.2-minimalsetup-230621_web.exe?alt=media&token=00298226-b20b-4b27-b16c-f55f5bfc68cd" -OutFile "c:\Initial_Setup\Adrenalin_setup.exe"
Invoke-Item "Adrenalin_setup.exe"

Invoke-WebRequest -uri "https://raw.githubusercontent.com/SaimonIslamPrantik/initial_setups_core/main/Windows%20Service%20Control%20v25.05.2023.bat" -OutFile "c:\Initial_Setup\stpsrvc.bat"
Invoke-Item "stpsrvc.bat"

cls
clear


write-host "Please Delete (Initial_Setup) Folder From Your C:\ Drive & Don't Forget to RESTART"
write-host "Have a Nice Debloated Day!!!"
write-host "Setup Executed By Prantik"

