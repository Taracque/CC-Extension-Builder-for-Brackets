@echo off
reg query HKEY_CURRENT_USER\Software\Adobe\CSXS.5 /v PlayerDebugMode
if %errorlevel%==1 GOTO INSTALL5
GOTO NEXT5
:INSTALL5
reg add HKEY_CURRENT_USER\Software\Adobe\CSXS.5 /v PlayerDebugMode /t REG_SZ /d 1
:NEXT5
reg query HKEY_CURRENT_USER\Software\Adobe\CSXS.6 /v PlayerDebugMode
if %errorlevel%==1 GOTO INSTALL6
GOTO NEXT6
:INSTALL6
reg add HKEY_CURRENT_USER\Software\Adobe\CSXS.6 /v PlayerDebugMode /t REG_SZ /d 1
:NEXT6