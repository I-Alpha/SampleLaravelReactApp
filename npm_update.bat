@echo off
call npm install  && call npm audit fix && ^
if "%1"=="" goto noArgs 
if not "%1"=="" goto argIn
if "%2" NEQ "" 2 goto wrongArgs
:argIn
    call npm run %1 && goto end 
:noArgs
    call npm run dev && goto end     
:wrongArgs
    echo "too many arguments. max 1 allowed." && exit
:end  
    echo "npm housekeeping complete"  