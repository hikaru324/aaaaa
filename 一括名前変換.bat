
set Files=%1
set Out=%2
set i=%3

@echo off
setlocal enabledelayedexpansion
for /F %%A in ('dir /s /b /n !Files!') do (
  set num=00!i!
  set num=!num:~-3,3!
  echo !Out!\!num!.txt
  copy %%A !Out!\!num!.txt
  set /a i=!i!+1
)
endlocal

pause
