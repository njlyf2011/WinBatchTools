@echo off

rem Windows Batch Tools Copyright (C) 2016-2017 NJLYF2011,i3boyacc
rem �������δ�ṩƷ�ʵ��������ǿ������������ӭ��������һ������������ٷ�����

title �����ı�������
cls
:start
echo.
set /p savpath= �������ļ��ı���·�����ļ����ƣ�
echo.
if exist %savpath% goto cho
:edit
echo �����·������ı����� Ctrl+Z ���ٰ��س�������
echo.
copy con %savpath%
echo �ļ��Ѿ�������ɣ��Ƿ��ٴ���һ����������Y����������������򽫻��˳���
set /p agcho= ��ѡ��
if (agcho==Y) goto start
exit

:cho
echo �ļ��Ѿ����ڣ��ļ����ݽ��ᱻ���ǣ��Ƿ������������Y��������������Ҫ��������·����
set /p cho= ��ѡ��
if(cho==Y) goto edit
goto start