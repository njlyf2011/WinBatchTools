@echo off

rem Windows Batch Tools  Copyright (C) 2016 NJLYF2011
rem 本软件不附带额外保证。此外，它是自由软件，您可以在遵守 GNU GPL v3
rem 许可证的前提下对这款软件进行修改、再发布。

cls
title 修改计算机名称

set /p name= 请输您的计算机名：
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v ComputerName /t reg_sz /d %name% /f
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_sz /d %name% /f 
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v Hostname /t reg_sz /d %name% /f 

set /p reboot=  修改完成，可能需要重新启动才能生效，请问您现在需要重新启动么？（Y/N）：
if "%reboot%"=="y" shutdown -t 00 -r
if "%reboot%"=="n" exit
