@echo off

rem Windows Batch Tools Copyright (C) 2016 NJLYF2011
rem 本程序从未提供品质担保。这是款自由软件，欢迎你在满足一定条件后对其再发布。

rem 设置一个变量，方便以后修改
set target=

set target=%temp%\network_info.txt

rem 删除旧有的临时文件（若存在）
if exist %target% del %target%

rem 调用相关外部命令获取网络信息
netsh -c interface dump >%target%

rem 当然是启动查看
start %target%

rem 等待，我不知道这个命令多余不多余，故先注释。
rem ping 127.0.0.1 -n 3 >nul 

rem 删除临时文件
del %target%

