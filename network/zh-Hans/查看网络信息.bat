@echo off

rem Windows Batch Tools Copyright (C) 2016 NJLYF2011
rem �������δ�ṩƷ�ʵ��������ǿ������������ӭ��������һ������������ٷ�����

rem ����һ�������������Ժ��޸�
set target=

set target=%temp%\network_info.txt

rem ɾ�����е���ʱ�ļ��������ڣ�
if exist %target% del %target%

rem ��������ⲿ�����ȡ������Ϣ
netsh -c interface dump >%target%

rem ��Ȼ�������鿴
start %target%

rem �ȴ����Ҳ�֪�����������಻���࣬����ע�͡�
rem ping 127.0.0.1 -n 3 >nul 

rem ɾ����ʱ�ļ�
del %target%

