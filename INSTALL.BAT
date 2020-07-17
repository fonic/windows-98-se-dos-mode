@ECHO OFF

REM -----------------------------------------------------------------------
REM                                                                       -
REM  Created by Fonic (https://github.com/fonic)                          -
REM  Date: 07/17/20                                                       -
REM                                                                       -
REM -----------------------------------------------------------------------

REM
REM Configuration (omit trailing backslashes)
REM
SET CONFIG_DST=C:
SET TOOLS_DST=C:\TOOLS

REM
REM Safety checks
REM
IF NOT EXIST .\INSTALL.BAT GOTO CHKFAIL
IF NOT EXIST .\CONFIG\*.* GOTO CHKFAIL
IF NOT EXIST .\TOOLS\*.* GOTO CHKFAIL
GOTO CHKPASS
:CHKFAIL
ECHO.
ECHO This script needs to be called from within the directory it is
ECHO stored in. Please change the current working directory using CD.
ECHO Aborting.
ECHO.
GOTO EXIT
:CHKPASS

REM
REM Backup existing configuration
REM
ECHO Backing up existing configuration...
IF EXIST %CONFIG_DST%\AUTOEXEC.BAT COPY /Y %CONFIG_DST%\AUTOEXEC.BAT %CONFIG_DST%\AUTOEXEC.BAK >NUL
IF EXIST %CONFIG_DST%\CONFIG.SYS COPY /Y %CONFIG_DST%\CONFIG.SYS %CONFIG_DST%\CONFIG.BAK >NUL
IF NOT EXIST %CONFIG_DST%\MSDOS.SYS GOTO SKPBAK1
ATTRIB -S -H -R %CONFIG_DST%\MSDOS.SYS >NUL
COPY /Y %CONFIG_DST%\MSDOS.SYS %CONFIG_DST%\MSDOS.BAK >NUL
:SKPBAK1

REM
REM Install new configuration
REM
ECHO Installing new configuration...
COPY /Y CONFIG\AUTOEXEC.BAT %CONFIG_DST%\ >NUL
COPY /Y CONFIG\CONFIG.SYS %CONFIG_DST%\ >NUL
COPY /Y CONFIG\MSDOS.SYS %CONFIG_DST%\ >NUL
ATTRIB +S +H +R %CONFIG_DST%\MSDOS.SYS >NUL

REM
REM Backup existing tools
REM
ECHO Backing up existing tools...
IF NOT EXIST %TOOLS_DST%\*.* GOTO SKPBAK2
DELTREE /Y %TOOLS_DST%.BAK >NUL
MOVE %TOOLS_DST% %TOOLS_DST%.BAK >NUL
:SKPBAK2

REM
REM Install new tools
REM
ECHO Installing new tools...
XCOPY /S /Y TOOLS %TOOLS_DST%\ >NUL

:EXIT
