cd c:\
mkdir "Initial_Setup"
cd .\Initial_Setup\
Invoke-WebRequest -uri https://raw.githubusercontent.com/SaimonIslamPrantik/mnlactv/main/Activator%20MS%20Office.cmd -OutFile c:\Initial_Setup\AC_MSO.cmd
Invoke-Item "AC_MSO.cmd"