@echo off

rem Windows Batch Tools Copyright (C) 2016 NJLYF2011
rem 本程序从未提供品质担保。这是款自由软件，欢迎你在满足一定条件后对其再发布。

rem 这里说句废话，祝各位教师教师节快乐。
rem 本学生狗在此祝贺。

title 修改当前主题
echo.
echo 本程序可用于修改当前系统主题，请在管理员身份下运行。

rem 设置路径
set /p theme_path= 请输入主题路径：

rem 这是临时文件的路径，在这里弄也是为了方便修改。
set tmp_path=%temp%\tmp_reg.reg

rem 下面这条命令也是为了保险起见。
del %tmp_path%

rem 将需要的东西写入临时文件
echo Windows Registry Editor Version 5.00 >%tmp_path%
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ThemeManager] >>%tmp_path%
echo "WCreatedUser"="1" >>%tmp_path%
echo "ThemeActive"="1" >>%tmp_path%
echo "LoadedBefore"="1" >>%tmp_path%
echo "LastUserLangID"="2052" >>%tmp_path%
echo "DllName"=%theme_path% >>%tmp_path%
echo "ColorName"="NormalColor" >>%tmp_path%
echo "SizeName"="NormalSize" >>%tmp_path%

rem 这个不用讲了，导入至注册表。
regedit /s %tmp_path%

rem 重启一下主题服务
net stop Themes
net start themes 

rem 删除啊 []~(￣▽￣)~*
del %tmp_path%

rem 2333333
echo 操作成功完成，请按任意键继续。
pause>nul