Set-ExecutionPolicy Unrestricted
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))


cd c:\
mkdir "Initial_Setup"
cd c:\
mkdir "Free MS Office"

cd c:\Initial_Setup\


iwr -useb https://christitus.com/win | iex


$y = @("y","Yes","yes")
$n = @("n","no","No")

do
{
	$ans = Read-Host "Wanna Install , sunshine, handbrake, avro-keyboard, sharex, spotify, epicgameslauncher, steam, ? (Just Type y/n) "
}

until
($n -contains $ans -or $y -contains $ans) 

if($y -contains $ans)
	{
		choco install  sunshine handbrake avro-keyboard sharex spotify epicgameslauncher steam  -y
	}

if($n -contains $ans)
{
	Write-host "OK Then, skipping to the next part"
}

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
