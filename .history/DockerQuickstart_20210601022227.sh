#!/bin/bash

:WAITLOOP
tasklist /FI "IMAGENAME eq notepad.exe" 2>NUL | find /I /N "notepad.exe">NUL
if "%ERRORLEVEL%"=="0" goto RUNNING
goto NOTRUNNING

:RUNNING
ping 9.9.9.9
goto WAITLOOP

:NOTRUNNING
echo its over




start /WAIT cmd /c npm_update.bat   &
BACK_PID=$!
while kill -0 $BACK_PID ; do
    echo "Process is still active..."
    sleep 1
    # You can add a timeout here if you want
done

sh dockerComposeUp.sh $2