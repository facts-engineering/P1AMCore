cd %0\..

:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)

:64BIT
echo 64-bit...
START dpinst-amd64.exe
GOTO END

:32BIT
echo 32-bit...
START dpinst-x86.exe
GOTO END

:END