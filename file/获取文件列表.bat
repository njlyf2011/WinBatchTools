@echo off

rem Windows Batch Tools Copyright(C) 2017 NJLYF2011(Simple)
rem 本程序从未提供品质担保。这是款自由软件，欢迎你在满足一定条件后对其再发布。

title 获取指定目录文件列表

:main
 rem 设定路径
 set showpath=
 set /p showpath= 请输入需要查看的路径，完成后请按回车（直接回车将显示当前目录的内容）：
 cls
 echo.
 echo 正在生成中，请稍候。对于比较大的目录，比如 Win7 之后 的 WinSxS ，可能需要很长时间。
 dir /a-d /s /b %showpath% >%temp%\showpath.txt
 
 rem 至于为什么将结果用文本编辑器打开而不是 CMD，是因为文件过多可能会导致无法显示上方文件。
 start %temp%\showpath.txt
 
 rem 清空变量
 set showpath=
 
 rem 询问是否保留结果
 set save_result=
 echo.
 set /p save_result= 是否保留结果？(Y/N):
 if  "%save_result%"=="Y"  copy %temp%\showpath.txt %cd%\result.txt
 if  "%save_result%"=="YES"  copy %temp%\showpath.txt %cd%\result.txt
 rem 特么居然要大小写
 if  "%save_result%"=="y"  copy %temp%\showpath.txt %cd%\result.txt
 if  "%save_result%"=="yes"  copy %temp%\showpath.txt %cd%\result.txt
 
 rem 收尾工作
 del %temp%\showpath.txt
 set save_result=
 
 echo 完成。请按任意键退出。
 pause>nul
 