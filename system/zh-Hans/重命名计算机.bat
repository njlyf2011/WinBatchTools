@echo off

rem Windows Batch Tools  Copyright (C) 2016 NJLYF2011
rem �������δ�ṩƷ�ʵ��������ǿ������������ӭ��������һ������������ٷ�����

cls
title �޸ļ�������ơ�

rem �Է���һ��
set name=
set reboot=

set /p name= �������ļ��������

rem ԭ���ö�˵��������ص�ע������֪����
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ActiveComputerName" /v ComputerName /t reg_sz /d %name% /f
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "NV Hostname" /t reg_sz /d %name% /f 
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v Hostname /t reg_sz /d %name% /f 

set /p reboot=  �޸���ɣ�������Ҫ��������������Ч��������������Ҫ��������ô����Y/N����
if "%reboot%"=="y" shutdown -t 00 -r
if "%reboot%"=="n" exit
