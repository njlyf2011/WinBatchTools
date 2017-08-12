@echo off

rem Windows Batch Tools Copyright (C) 2016 NJLYF2011
rem �������δ�ṩƷ�ʵ��������ǿ������������ӭ��������һ������������ٷ�����

rem ������ʱ�ļ���·��
set tmp_file=
set tmp_file=%temp%\task_tmp.vbs

rem ɾ����ʱ�ļ���������ڣ�
if exist %tmp_file% del %tmp_file%

rem ����һ����ʱ�ļ�
echo ����PID   ��������    ����·��

rem ���VBS�Ĵ����˼���ǵ���Win32API���鿴���̡�
echo for each ps in getobject _ >%tmp_file%
echo ("winmgmts:\\.\root\cimv2:win32_process").instances_ >>%tmp_file%
echo wscript.echo ps.handle^&vbtab^&ps.name^&vbtab^&ps.executablepath:next >>%tmp_file%

rem �������з�ʽ����֮��
cscript //nologo %tmp_file%

rem �����ʱ�ļ�������
del %tmp_file%
set tmp_file=
echo.

rem ���ö�˵�˰�
echo �����ɹ���ɡ��밴������˳���
pause>nul
exit