@echo off

rem Windows Batch Tools Copyright (C) 2016 NJLYF2011
rem 本程序从未提供品质担保。这是款自由软件，欢迎你在满足一定条件后对其再发布。

title 简易文本创建器
cls
:start
echo.
set /p savpath= 请输入文件的保存路径及文件名称：
echo.
if exist %savpath% goto cho
:edit
echo 请在下方输入文本，按 Ctrl+Z ，再按回车结束。
echo.
copy con %savpath%
echo 文件已经创建完成，是否再创建一个？（输入Y继续创建，否则程序将会退出）
set /p agcho= 请选择：
if (agcho==Y) goto start
exit

:cho
echo 文件已经存在，文件内容将会被覆盖！是否继续？（输入Y继续，否则将进入输入路径的部分）
set /p cho= 请选择：
if(cho==Y) goto edit
goto start