@echo off

rem Windows Batch Tools Copyright (C) 2016 NJLYF2011
rem �������δ�ṩƷ�ʵ��������ǿ������������ӭ��������һ������������ٷ�����

rem Ŀǰ�ű������Ǻ����ƣ�ϣ����λ�ܹ��ṩ���飬лл��

title ��ʱ�ػ�
set /p choice=����ϣ���½���ʱ�ػ�����1�����鿴���еĶ�ʱ�ػ�����2��������ɾ����ʱ�ػ�����3������1/2/3����

if "%choice%"=="1" goto NewTask
if "%choice%"=="2" goto QueryTask
if "%choice%"=="3" goto DeleteTask

:NewTask


echo.
set /p time= ������ʱ�䣨HH:mm����
set /p choice=��ϣ����ÿ��ִ�У�1�����ǵ���ִ�У�2������1/2����

if "%choice%"=="1" schtasks /create /sc DAILY /tn WinBatchToolsAutoShutdown /tr "shutdown -t 00 -s" /st %time% /f
if "%choice%"=="2" schtasks /create /sc ONCE /tn WinBatchToolsAutoShutdown /tr "shutdown -t 00 -s" /st %time% /f

echo.
echo �����ɹ���ɡ�

:QueryTask


echo.
echo �����г���ǰϵͳ�Ѿ����ŵ�����
echo.

schtasks /query /tn WinBatchToolsAutoShutdown

echo.
echo ������ʹ�ñ����߻���������ʾ�������� schtasks /delete /tn WinBatchToolsAutoShutdown ɾ����ϣ��ִ�е�����

echo.
pause
exit

:DeleteTask

schtasks /delete /tn WinBatchToolsAutoShutdown /f
echo.
echo ��ʱ�ػ�������ɾ����
echo.
pause
exit