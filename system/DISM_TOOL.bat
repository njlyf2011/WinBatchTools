rem WinBashTools Copyright 2017 lini3acc(追求i3的孩纸)
rem 本程序从未提供品质担保。这是款自由软件，欢迎你在满足一定条件后对其再发布。

@echo off
cls
echo.
echo DISM简易辅助工具(Beta)
echo.
echo 请选择操作：
echo.
echo (1)获取镜像信息
echo (2)挂载镜像
echo (3)展开镜像
echo (4)卸载镜像
echo (5)将目录保存到镜像
echo.
:ch
set /p cho= 请选择：
if %cho% EQU 1 goto ch1
if %cho% EQU 2 goto ch2
if %cho% EQU 3 goto ch3
if %cho% EQU 4 goto ch4
if %cho% EQU 5 goto ch5
goto ch
:ch1
echo 此功能将在未来加入，敬请期待！
goto ch
:ch2
echo 此功能将在未来加入，敬请期待！
goto ch
:ch3
echo 此功能将在未来加入，敬请期待！
goto ch
:ch4
echo 此功能将在未来加入，敬请期待！
goto ch
:ch5
echo 此功能将在未来加入，敬请期待！
goto ch