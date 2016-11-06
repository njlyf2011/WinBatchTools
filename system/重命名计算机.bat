@echo off

rem Windows Batch Tools  Copyright (C) 2016 NJLYF2011
rem 本程序从未提供品质担保。这是款自由软件，欢迎你在满足一定条件后对其再发布。

cls
title 修改计算机名称。

rem 以防万一！
set name=
set reboot=

set /p name= 请输您的计算机名：

rem 原理不用多说，看看相关的注册表项就知道。
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v ComputerName /t reg_sz /d %name% /f
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_sz /d %name% /f 
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v Hostname /t reg_sz /d %name% /f 

set /p reboot=  修改完成，可能需要重新启动才能生效，请问您现在需要重新启动么？（Y/N）：
if "%reboot%"=="y" shutdown -t 00 -r
if "%reboot%"=="n" exit
