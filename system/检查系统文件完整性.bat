@echo off

rem Windows Batch Tools  Copyright (C) 2016 NJLYF2011
rem 本程序从未提供品质担保。这是款自由软件，欢迎你在满足一定条件后对其再发布。

rem 检查文件是否存在。
if not exist %SystemRoot%\System32\sfc.exe goto error

:normal
sfc /scannow
echo.
echo 操作成功完成。
pause
exit

:error
echo.
echo %SystemRoot%\System32\sfc.exe 不存在，请检查。
echo.
pause

exit