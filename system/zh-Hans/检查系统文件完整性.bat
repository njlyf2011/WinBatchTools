@echo off

rem Windows Batch Tools  Copyright (C) 2016 NJLYF2011
rem �������δ�ṩƷ�ʵ��������ǿ������������ӭ��������һ������������ٷ�����

rem ����ļ��Ƿ���ڡ�
if not exist %SystemRoot%\System32\sfc.exe goto error


:normal
sfc /scannow
pause
goto ext

:error
echo.
echo %SystemRoot%\System32\sfc.exe �����ڣ����顣
echo.
pause

:ext
