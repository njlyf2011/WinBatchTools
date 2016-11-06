@echo off

rem 版权声明：此批处理代码来自于网上，属于公有领域。

title 系统清理工具
echo ============================================================================
echo                              旧式文件清理工具
echo.
echo 本批处理就是网上流行的那几行清理代码，我做出了部分修改。
echo 本脚本适用于 Windows Vista 以下的 Windows 版本。
echo Windows Vista 以上的 Windows 版本不推荐使用本脚本，因为不会产生最佳效果。
echo.
echo ============================================================================
echo 按任意键开始清理。。。
pause>nul

rem 清理系统分区下的日志、备份文件
del /f /s /q %systemdrive%\*.tmp 
del /f /s /q %systemdrive%\*._mp 
del /f /s /q %systemdrive%\*.log 
del /f /s /q %systemdrive%\*.gid 
del /f /s /q %systemdrive%\*.chk 
del /f /s /q %systemdrive%\*.old 

rem 清理回收站
del /f /s /q %systemdrive%\recycled\*.* 

rem 清理回收站、清理程序缓存
del /f /s /q %windir%\*.bak 
del /f /s /q %windir%\prefetch\*.* 

rem 以下注释过的命令不建议使用，因为在NTFS分区上会产生权限问题。
rem rd /s /q %windir%\temp & md %windir%\temp 

rem 用户产生的隐私文件
del /f /q %userprofile%\cookies\*.* 
del /f /q %userprofile%\recent\*.* 
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" 
del /f /s /q "%userprofile%\Local Settings\Temp\*.*" 
del /f /s /q "%userprofile%\recent\*.*" 

cls
echo 清除系统垃圾完成。按任意键退出 
pause 