@echo off
SETLOCAL

set "psCommand=powershell -Command "$pword = read-host 'keystore password' -AsSecureString ; ^
    $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
        [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set key-store-password=%%p

set /p alias="alias: "

set "psCommand=powershell -Command "$pword = read-host 'alias password' -AsSecureString ; ^
    $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
        [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set alias-password=%%p

tns build android --release --key-store-path .\\keys\\android.keystore --key-store-password %key-store-password% --key-store-alias %alias% --key-store-alias-password %alias-password%"

ENDLOCAL
