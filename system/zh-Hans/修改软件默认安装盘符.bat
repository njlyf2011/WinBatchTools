@echo off

rem Windows Batch Tools Copyright (C) 2016 NJLYF2011
rem �������δ�ṩƷ�ʵ��������ǿ������������ӭ��������һ������������ٷ�����

rem ��ֹĳЩ���������������趨
title ����
echo.
echo �����򽫻��޸�����ϵͳ�ؼ����ã�����˼��ִ�С�
echo �����ȷʵ�����������밴�����������
pause>nul
cls

rem ��ʼ
title �޸�Ĭ�ϰ�װ·��
rem ���ñ���
 rem ��ʱ�ļ�λ��
 set tmpfile=
 set tmpfile=%temp%\def_disk.reg

 rem Ĭ���̷�
 set def_disk=%SYSTEMDRIVE:~0,1%
 set /P def_disk=������Ĭ�ϰ�װ������̷���Ĭ��Ϊϵͳ����������Ȼ�󰴻س���
 echo.
 echo ����ѡ�� %def_disk% ����ΪĬ�ϰ�װ������̷���
 echo ��ϵͳ�������û��ʻ����ơ��Ի���ʱ����ѡ���ǡ����������Ա���롣
 echo ��Ҫ�����������밴�����������
 pause>nul

rem �ж�ϵͳ��ϵ�ṹ��x64����x86
if %PROCESSOR_ARCHITECTURE:~-1%==4 (goto x64) else goto x86

rem �޸�ע���

rem 64λϵͳ
:x64
echo.
echo Windows Registry Editor Version 5.00 >%temp%\def_disk.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion]>>%temp%\def_disk.reg
echo "ProgramFilesDir"="%def_disk%:\\Program Files">>%temp%\def_disk.reg
echo "ProgramFilesDir (x86)"="%def_disk%:\\Program Files (x86)">>%temp%\def_disk.reg
echo "ProgramW6432Dir"="%def_disk%:\\Program Files">>%temp%\def_disk.reg
echo "CommonFilesDir"="%def_disk%:\\Program Files\\Common Files">>%temp%\def_disk.reg
echo "CommonFilesDir (x86)"="%def_disk%:\\Program Files (x86)\\Common Files">>%temp%\def_disk.reg
echo "CommonW6432Dir"="%def_disk%:\\Program Files\\Common Files">>%temp%\def_disk.reg
regedit.exe /s %temp%\def_disk.reg
rem ����32λϵͳ����
goto end

rem 32λϵͳ
:x86
echo.
echo Windows Registry Editor Version 5.00 >%temp%\def_disk.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion]>>%temp%\def_disk.reg
echo "ProgramFilesDir"="%def_disk%:\\Program Files">>%temp%\def_disk.reg
echo "CommonFilesDir"="%def_disk%:\\Program Files\\Common Files">>%temp%\def_disk.reg
regedit.exe /s %temp%\def_disk.reg

:end
rem ɾ����ʱ�ļ�
del /f /q %temp%\def_disk.reg
echo.
echo.
echo �����ɹ���ɣ��밴�����������
pause>nul
exit

rem �ܲ����������˵�΢С�Ĺ�����лл��ҡ�