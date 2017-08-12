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
echo 执行完操作后，程序可能会自动退出。
echo.
echo 文件操作：
echo (1)创建文本文件
echo 网络操作：
echo (2)测试网络是否通畅	(3)查看工作组
echo (4)查看网络信息		(5)校对时间
echo (6)查看内网所有IP地址
echo 系统操作：
echo (7)screenfetch		(8)查看进程
echo (9)查看硬件信息		(10)定时关机
echo (11)检查文件完整性		(12)禁用USB设备
echo (13)旧式文件清理		(13)批量修复DLL注册
echo (15)启用USB设备		(16)去除箭头
echo (17)提取用户列表		(18)修改软件默认安装盘符
echo (19)重命名计算机		(20)修改当前系统主题
echo (21)软件授权管理
echo 其它操作：
echo (22)进入“Unix 命令转 Windows 命令”
echo (23)退出程序
:cho
set /p cho= 请选择：
if %cho% EQU 1 .\file\简易文本创建器
if %cho% EQU 2 .\network\测试网络是否通畅
if %cho% EQU 3 .\network\查看工作组
if %cho% EQU 4 .\network\查看网络信息
if %cho% EQU 5 .\network\校对时间
if %cho% EQU 6 .\network\查看内网所有IP地址
if %cho% EQU 7 .\system\screenfetch
if %cho% EQU 8 .\system\查看进程
if %cho% EQU 9 .\system\查看硬件信息
if %cho% EQU 10 .\system\定时关机
if %cho% EQU 11 .\system\检查文件完整性
if %cho% EQU 12 .\system\禁用USB设备
if %cho% EQU 13 .\system\旧式文件清理
if %cho% EQU 14 .\system\批量修复DLL注册
if %cho% EQU 15 .\system\启用USB设备
if %cho% EQU 16 .\system\去除箭头
if %cho% EQU 17 .\system\提取用户列表
if %cho% EQU 18 .\system\修改软件默认安装盘符
if %cho% EQU 19 .\system\重命名计算机
if %cho% EQU 20 .\visual\修改当前系统主题
if %cho% EQU 21 .\system\授权管理
if %cho% EQU 22 .\unix\dash
if %cho% EQU 23 cmd
title WinBatchTools
goto cho

