@echo off

rem Windows Batch Tools Copyright (C) 2016 NJLYF2011
rem 本程序从未提供品质担保。这是款自由软件，欢迎你在满足一定条件后对其再发布。

rem 设置临时文件的路径
set tmp_file=
set tmp_file=%temp%\task_tmp.vbs

rem 删掉临时文件（如果存在）
if exist %tmp_file% del %tmp_file%

rem 生成一个临时文件
echo 进程PID   进程名称    具体路径

rem 这段VBS的大概意思就是调用Win32API，查看进程。
echo for each ps in getobject _ >%tmp_file%
echo ("winmgmts:\\.\root\cimv2:win32_process").instances_ >>%tmp_file%
echo wscript.echo ps.handle^&vbtab^&ps.name^&vbtab^&ps.executablepath:next >>%tmp_file%

rem 以命令行方式运行之。
cscript //nologo %tmp_file%

rem 清除临时文件及变量
del %tmp_file%
set tmp_file=
echo.

echo 操作成功完成。请按任意键退出。
pause>nul
exit