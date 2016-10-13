@echo off

rem Windows Batch Tools Copyright (C) 2016 NJLYF2011
rem 本程序从未提供品质担保。这是款自由软件，欢迎你在满足一定条件后对其再发布。

rem 目前脚本还不是很完善，希望各位能够提供建议，谢谢！

title 定时关机
set /p time= 请输入时间：
set /p choice=您希望是每天执行还是单次执行？（1/2）：

if "%choice%"=="1" at %time% /every:M,T,W,Th,F,S,Su shutdown -t 00 -s
if "%choice%"=="2" at %time%  shutdown -t 00 -s

echo.
echo 操作成功完成。现在列出当前系统已经安排的任务。
echo.
echo.
at
echo.
echo 您可以在命令提示符中输入 at <任务ID> /delete 删除不希望执行的任务。

pause
exit