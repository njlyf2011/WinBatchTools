@echo off

rem Windows Batch Tools Copyright (C) 2016 NJLYF2011
rem 本程序从未提供品质担保。这是款自由软件，欢迎你在满足一定条件后对其再发布。

title 简易文本创建器
cls
echo.
set /p savpath= 请输入文件的保存路径：
echo.
echo 请在下方输入文本，按 Ctrl+Z 结束。
echo.
copy con %savpath%