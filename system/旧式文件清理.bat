@echo off

rem ��Ȩ��������������������������磬��Ȩδ֪��

title ϵͳ������
echo ============================================================================
echo                              ��ʽ�ļ�������
echo.
echo ������������������е��Ǽ���������룬�������˲����޸ġ�
echo ���ű������� Windows Vista ���µ� Windows �汾��
echo Windows Vista ���ϵ� Windows �汾���Ƽ�ʹ�ñ��ű�����Ϊ����������Ч����
echo.
echo ============================================================================
echo ���������ʼ��������
pause>nul

rem ����ϵͳ�����µ���־�������ļ�
del /f /s /q %systemdrive%\*.tmp 
del /f /s /q %systemdrive%\*._mp 
del /f /s /q %systemdrive%\*.log 
del /f /s /q %systemdrive%\*.gid 
del /f /s /q %systemdrive%\*.chk 
del /f /s /q %systemdrive%\*.old 

rem �������վ
del /f /s /q %systemdrive%\recycled\*.* 

rem �������վ��������򻺴�
del /f /s /q %windir%\*.bak 
del /f /s /q %windir%\prefetch\*.* 

rem ����ע�͹����������ʹ�ã���Ϊ��NTFS�����ϻ����Ȩ�����⡣
rem rd /s /q %windir%\temp & md %windir%\temp 

rem �û���������˽�ļ�
del /f /q %userprofile%\cookies\*.* 
del /f /q %userprofile%\recent\*.* 
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" 
del /f /s /q "%userprofile%\Local Settings\Temp\*.*" 
del /f /s /q "%userprofile%\recent\*.*" 

cls
echo ���ϵͳ������ɡ���������˳� 
pause 