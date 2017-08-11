rem WinBashTools Copyleft 2017 lini3acc(追求i3的孩纸)
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
echo.
echo 文件操作：
echo (1)创建文本文件
echo 网络操作：
echo (2)测试网络是否通畅	(3)查看工作组
echo (4)查看网络信息		(5)校对时间
echo 系统操作：
echo (6)screenfetch		(7)查看进程
echo (8)查看硬件信息		(9)定时关机
echo (10)检查文件完整性		(11)禁用USB设备
echo (12)旧式文件清理		(13)批量修复DLL注册
echo (14)启用USB设备		(15)去除箭头
echo (16)提取用户列表		(17)修改软件默认安装盘符
echo (18)重命名计算机		(19)修改当前系统主题
echo 其它操作：
echo (20)进入“Unix 命令转 Windows 命令”
echo (21)退出程序
:cho
set /p cho= 请选择：
if %cho% EQU 1 .\file\简易文本创建器
if %cho% EQU 2 .\network\测试网络是否通畅
if %cho% EQU 3 .\network\查看工作组
if %cho% EQU 4 .\network\查看网络信息
if %cho% EQU 5 .\network\校对时间
if %cho% EQU 6 .\system\screenfetch
if %cho% EQU 7 .\system\查看进程
if %cho% EQU 8 .\system\查看硬件信息
if %cho% EQU 9 .\system\定时关机
if %cho% EQU 10 .\system\检查文件完整性
if %cho% EQU 11 .\system\禁用USB设备
if %cho% EQU 12 .\system\旧式文件清理
if %cho% EQU 13 .\system\批量修复DLL注册
if %cho% EQU 14 .\system\启用USB设备
if %cho% EQU 15 .\system\去除箭头
if %cho% EQU 16 .\system\提取用户列表
if %cho% EQU 17 .\system\修改软件默认安装盘符
if %cho% EQU 18 .\system\重命名计算机
if %cho% EQU 19 .\visual\修改当前系统主题
if %cho% EQU 20 .\unix\dash
if %cho% EQU 21 cmd
title WinBatchTools
goto cho

