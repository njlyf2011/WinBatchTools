rem WinBatchTools Copyleft 2017 i3boyacc(追求i3的孩纸)
rem 本程序从未提供品质担保。这是款自由软件，欢迎你在满足一定条件后对其再发布。

@echo off
cd /d %~dp0
title WinBatchTools
cls
:lst
echo.
echo 欢迎使用WinBatchTools，请选择您的操作
echo.
echo 某些操作可能需要管理员权限，要执行这些操作，请以管理员身份运行本程序。
echo 执行完操作后，程序可能会自动退出。
echo.
echo 文件操作：
echo (1)创建文本文件         (2)获取文件列表
echo 网络操作：
echo (3)测试网络是否通畅	(4)查看工作组
echo (5)查看网络信息		(6)校对时间
echo (7)查看内网所有IP地址
echo 系统操作：
echo (8)screenfetch		(9)查看进程
echo (10)查看硬件信息	(11)定时关机
echo (12)检查系统文件完整性	(13)禁用USB设备
echo (14)旧式文件清理	(15)批量修复DLL注册
echo (16)启用USB设备		(17)去除箭头
echo (18)提取用户列表	(19)修改软件默认安装盘符
echo (20)重命名计算机	(21)修改当前系统主题
echo (22)软件授权管理        (23)查看系统版本信息
echo (24)DISM简易辅助工具(1.0 Beta For WinBatchTools)
echo 其它操作：
echo (25)进入“Unix 命令转 Windows 命令”
echo (26)退出程序
:cho
echo.
set /p cho= 请选择：
echo.
if %cho% EQU 1 .\file\简易文本创建器
if %cho% EQU 2 .\file\获取文件列表
if %cho% EQU 3 .\network\测试网络是否通畅
if %cho% EQU 4 .\network\查看工作组
if %cho% EQU 5 .\network\查看网络信息
if %cho% EQU 6 .\network\校对时间
if %cho% EQU 7 .\network\查看内网所有IP地址
if %cho% EQU 8 .\system\screenfetch
if %cho% EQU 9 .\system\查看进程
if %cho% EQU 10 .\system\查看硬件信息
if %cho% EQU 11 .\system\定时关机
if %cho% EQU 12 .\system\检查系统文件完整性
if %cho% EQU 13 .\system\禁用USB设备
if %cho% EQU 14 .\system\旧式文件清理
if %cho% EQU 15 .\system\批量修复DLL注册
if %cho% EQU 16 .\system\启用USB设备
if %cho% EQU 17 .\system\去除箭头
if %cho% EQU 18 .\system\提取用户列表
if %cho% EQU 19 .\system\修改软件默认安装盘符
if %cho% EQU 20 .\system\重命名计算机
if %cho% EQU 21 .\visual\修改当前系统主题
if %cho% EQU 22 .\system\授权管理
if %cho% EQU 23 %windir%\system32\winver
if %cho% EQU 24 .\system\DISM_TOOL
if %cho% EQU 25 .\unix\dash
if %cho% EQU 26 goto end
goto cho
:end

