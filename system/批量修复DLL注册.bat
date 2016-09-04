@echo off

rem Windows Batch Tools  Copyright (C) 2016 NJLYF2011
rem 本程序从未提供品质担保。这是款自由软件，欢迎你在满足一定条件后对其再发布。

echo 这是一个修复系统 DLL 的脚本，能够修复一些被恶意程序破坏的 DLL 文件。
echo 但是这个并不是灵丹妙药，并不能解决所有的问题，所以用完之后抱怨这东西没效果的行为是无知的。
echo 如果你想全面修复系统文件的话，请在命令提示符里运行 sfc /scannow。
echo.
echo 废话不多说，按任意键开始。
pause>nul

rem 原理是什么，就是让系统自带的注册程序重新注册 DLL。
for %%i in (%windir%\system32\*.dll) do regsvr32.exe /s %%i
echo.
echo 操作成功完成，请按任意键退出。
pause>nul
