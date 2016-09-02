@echo off

rem 这只是一个雏形，还没有完善。

for %%i in (%windir%\system32\*.dll) do regsvr32.exe /s %%i

echo 程序执行完毕

pause
