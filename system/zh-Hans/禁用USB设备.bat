@echo off

rem 下面的批处理代码来源于网络

title 禁用 USB 设备
echo.
echo 警告：本程序将会修改您的系统设置，请三思后而行。
echo 如果您不慎执行，请执行本目录下的“启用USB设备.bat”
echo.
pause
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\USBSTOR /v start /t reg_dword /d 0x4 /f
echo.
echo 操作成功完成。

rem 以防万一！
set choice=
set /p choice=设置将于注销后生效，请问现在想立即注销么（Y/N）？

if "%choice%=="y" shutdown -l
if "%choice%=="n" exit