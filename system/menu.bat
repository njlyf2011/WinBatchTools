@echo off

rem Windows Batch Tools  Copyright (C) 2016 NJLYF2011
rem 本软件不附带额外保证。此外，它是自由软件，您可以在遵守 GNU GPL v3
rem 许可证的前提下对这款软件进行修改、再发布。

:main
cls
title 主菜单
echo.
echo =====================================================================
echo                     Windows Batch Tools 主菜单
echo.
echo 本程序是一些批处理脚本的合集（包括网上的及我自己写的），我希望可以
echo 帮到大家。
echo 若没有特别声明，这些脚本的代码基于 GNU GPL v3 许可证下发布。
echo.
echo 0. 检查系统完整性
echo 1. 列出当前进程
echo 2. 网络工具
echo 3. 
echo =====================================================================
set /p choice= 请输入您需要的选项并按回车：
if "%choice%"=="0" call 检查系统文件完整性.bat
if "%choice%"=="1" call 列出进程.bat
if "%choice%"=="2" call network\menu.bat
if "%choice%"=="3" call wait\menu.bat

title 输入无效
echo 当前输入无效，请重新输入。
pause>nul
goto main
