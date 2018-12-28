@echo off

rem 版权声明：此批处理代码来自于网络，版权未知。

title 系统清理工具
echo ============================================================================
echo                                去除快捷方式箭头
echo.
echo 本批处理中的代码来源于网络。
echo 本程序可以去除快捷方式的箭头，适合不喜欢快捷方式箭头的用户使用。
echo 本程序需要在管理员权限下运行。
echo.
echo ============================================================================
echo 按任意键开始执行。。。
pause>nul

reg delete HKEY_CLASSES_ROOT\lnkfile /v IsShortcut /f
reg delete HKEY_CLASSES_ROOT\piffile /v IsShortcut /f

rem 重启explorer
taskkill /f /im explorer.exe
start explorer.exe

RunDll32.exe USER32.DLL,UpdatePerUserSystemParameters

echo 成功执行。
pause