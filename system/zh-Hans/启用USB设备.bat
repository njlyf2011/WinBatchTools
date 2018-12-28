@echo off

rem 版权声明：此批处理代码来自于网络，版权未知。

title 启动 USB 设备
echo.
echo 警告：本程序将会修改您的系统设置，请三思后而行。
echo.
pause
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\USBSTOR /v Start /t REG_DWORD /d 3 /f
echo.
echo 操作成功完成。

rem 以防万一！
set choice=
set /p choice=设置将于注销后生效，请问现在想立即注销么（Y/N）？

if "%choice%=="y" shutdown -l
if "%choice%=="n" exit