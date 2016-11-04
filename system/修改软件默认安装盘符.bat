@echo off

rem Windows Batch Tools Copyright (C) 2016 NJLYF2011
rem 本程序从未提供品质担保。这是款自由软件，欢迎你在满足一定条件后对其再发布。

rem 防止某些人闷声作大死而设定
title 警告
echo.
echo 本程序将会修改您的系统关键设置，请三思后执行。
echo 如果你确实想这样做，请按任意键继续。
pause>nul
cls

rem 开始
title 修改默认安装路径
rem 设置变量
 rem 临时文件位置
 set tmpfile=
 set tmpfile=%temp%\def_disk.reg

 rem 默认盘符
 set def_disk=%SYSTEMDRIVE:~0,1%
 set /P def_disk=请输入默认安装软件的盘符（默认为系统驱动器），然后按回车：
 echo.
 echo 您已选择 %def_disk% 盘作为默认安装软件的盘符。
 echo 当系统弹出“用户帐户控制”对话框时，请选择“是”或输入管理员密码。
 echo 若要继续操作，请按任意键继续。
 pause>nul

rem 判断系统体系结构是x64还是x86
if %PROCESSOR_ARCHITECTURE:~-1%==4 (goto x64) else goto x86

rem 修改注册表

rem 64位系统
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
rem 跳过32位系统部分
goto end

rem 32位系统
:x86
echo.
echo Windows Registry Editor Version 5.00 >%temp%\def_disk.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion]>>%temp%\def_disk.reg
echo "ProgramFilesDir"="%def_disk%:\\Program Files">>%temp%\def_disk.reg
echo "CommonFilesDir"="%def_disk%:\\Program Files\\Common Files">>%temp%\def_disk.reg
regedit.exe /s %temp%\def_disk.reg

:end
rem 删除临时文件
del /f /q %temp%\def_disk.reg
echo.
echo.
echo 操作成功完成，请按任意键继续。
pause>nul
exit

rem 很惭愧，就做了点微小的工作，谢谢大家。