@echo off
SETLOCAL

set /p alias="key alias: "

keytool -genkey -v -keystore .\\keys\\android.keystore -alias %alias% -keyalg RSA -keysize 2048 -validity 10000

ENDLOCAL
