:: https://www.geeksforgeeks.org/writing-windows-batch-script/
:: https://www.makeuseof.com/tag/write-simple-batch-bat-file/
:: https://www.tutorialspoint.com/batch_script/batch_script_variables.htm
:: https://www.devmedia.com.br/introducao-a-arquivos-bat-e-programacao-em-lotes/24800

@ECHO OFF
:: This batch file details Windows 10, hardware, and networking configuration.
TITLE My System Info
ECHO Please wait... Checking system information.
:: Section 1: Windows 10 information
ECHO ==========================
ECHO WINDOWS INFO
ECHO ============================
systeminfo
:: Section 2: Hardware information.
ECHO ============================
ECHO HARDWARE INFO
ECHO ============================
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
wmic diskdrive get name,model,size
wmic path win32_videocontroller get name
:: Section 3: Networking information.
ECHO ============================
ECHO NETWORK INFO
ECHO ============================
ipconfig | findstr IPv4
ipconfig | findstr IPv6
ECHO ============================
ECHO NETWORK FULL INFO
ECHO ============================
ipconfig /all
START https://support.microsoft.com/en-us/windows/windows-10-system-requirements-6d4e9a79-66bf-7950-467c-795cf0386715
PAUSE
