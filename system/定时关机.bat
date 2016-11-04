@echo off

rem Windows Batch Tools Copyright (C) 2016 NJLYF2011
rem 本程序从未提供品质担保。这是款自由软件，欢迎你在满足一定条件后对其再发布。

rem 目前脚本还不是很完善，希望各位能够提供建议，谢谢！

title 定时关机
set /p choice=您是希望新建定时关机任务（1），查看已有的定时关机任务（2），还是删除定时关机任务（3）？（1/2/3）：

if "%choice%"=="1" goto NewTask
if "%choice%"=="2" goto QueryTask
if "%choice%"=="3" goto DeleteTask

:NewTask


echo.
set /p time= 请输入时间（HH:mm）：
set /p choice=您希望是每天执行（1）还是单次执行（2）？（1/2）：

if "%choice%"=="1" schtasks /create /sc DAILY /tn WinBatchToolsAutoShutdown /tr "shutdown -t 00 -s" /st %time% /f
if "%choice%"=="2" schtasks /create /sc ONCE /tn WinBatchToolsAutoShutdown /tr "shutdown -t 00 -s" /st %time% /f

echo.
echo 操作成功完成。

:QueryTask


echo.
echo 现在列出当前系统已经安排的任务。
echo.

schtasks /query /tn WinBatchToolsAutoShutdown

echo.
echo 您可以使用本工具或在命令提示符中输入 schtasks /delete /tn WinBatchToolsAutoShutdown 删除不希望执行的任务。

echo.
pause
exit

:DeleteTask

schtasks /delete /tn WinBatchToolsAutoShutdown /f
echo.
echo 定时关机任务已删除。
echo.
pause
exit