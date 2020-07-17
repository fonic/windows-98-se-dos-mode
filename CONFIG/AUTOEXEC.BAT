@ECHO OFF

REM Configuration options
SET PATH=%PATH%;C:\TOOLS
SET CODEPAGE=850
SET KEYBOARD=us
REM SET FDAPM=APMDOS
SET FDAPM=ADV:REG

:COMMON
REM DOSIDLE does not seem to work, disabled for now, using FDAPM.COM instead
REM LH C:\TOOLS\DOSIDLE.EXE
LH C:\TOOLS\FDAPM.COM %FDAPM% >NUL
LH MODE.COM con codepage prepare=((%CODEPAGE%) C:\WINDOWS\COMMAND\EGA.CPI) >NUL
LH MODE.COM con codepage select=%CODEPAGE% >NUL
LH KEYB.COM %KEYBOARD%,,C:\WINDOWS\COMMAND\KEYBOARD.SYS >NUL
LH C:\WINDOWS\COMMAND\DOSKEY.COM >NUL
REM CTMOUSE will automatically load itself high
C:\TOOLS\CTMOUSE.EXE >NUL
GOTO %CONFIG%

:WINDOWS
CLS
WIN.COM
GOTO EXIT

:DOS
GOTO EXIT

:DOSCD
REM Using SHSUCDX.COM instead which has a much smaller memory footprint,
REM leaving this here for future reference
REM C:\WINDOWS\COMMAND\MSCDEX.EXE /D:MSCD001
REM LH C:\WINDOWS\COMMAND\MSCDEX.EXE /D:MSCD001
REM SHSUCDX.COM will automatically load itself high, using LH will even
REM prevent that!
REM LH C:\TOOLS\SHSUCDX.COM /D:MSCD001
C:\TOOLS\SHSUCDX.COM /D:MSCD001 >NUL
GOTO EXIT

:EXIT
