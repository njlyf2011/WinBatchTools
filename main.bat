rem WinBatchTools Copyleft 2017 i3boyacc(׷��i3�ĺ�ֽ)
rem �������δ�ṩƷ�ʵ��������ǿ������������ӭ��������һ������������ٷ�����

@echo off
cd /d %~dp0
title WinBatchTools
cls
:lst
echo.
echo ��ӭʹ��WinBatchTools����ѡ�����Ĳ���
echo.
echo ĳЩ����������Ҫ����ԱȨ�ޣ�Ҫִ����Щ���������Թ���Ա������б�����
echo ִ��������󣬳�����ܻ��Զ��˳���
echo.
echo �ļ�������
echo (1)�����ı��ļ�         (2)��ȡ�ļ��б�
echo ���������
echo (3)���������Ƿ�ͨ��	(4)�鿴������
echo (5)�鿴������Ϣ		(6)У��ʱ��
echo (7)�鿴��������IP��ַ
echo ϵͳ������
echo (8)screenfetch		(9)�鿴����
echo (10)�鿴Ӳ����Ϣ	(11)��ʱ�ػ�
echo (12)���ϵͳ�ļ�������	(13)����USB�豸
echo (14)��ʽ�ļ�����	(15)�����޸�DLLע��
echo (16)����USB�豸		(17)ȥ����ͷ
echo (18)��ȡ�û��б�	(19)�޸����Ĭ�ϰ�װ�̷�
echo (20)�����������	(21)�޸ĵ�ǰϵͳ����
echo (22)�����Ȩ����        (23)�鿴ϵͳ�汾��Ϣ
echo (24)DISM���׸�������(1.0 Beta For WinBatchTools)
echo ����������
echo (25)���롰Unix ����ת Windows ���
echo (26)�˳�����
:cho
echo.
set /p cho= ��ѡ��
echo.
if %cho% EQU 1 .\file\zh-Hans\�����ı�������
if %cho% EQU 2 .\file\zh-Hans\��ȡ�ļ��б�
if %cho% EQU 3 .\network\zh-Hans\���������Ƿ�ͨ��
if %cho% EQU 4 .\network\zh-Hans\�鿴������
if %cho% EQU 5 .\network\zh-Hans\�鿴������Ϣ
if %cho% EQU 6 .\network\zh-Hans\У��ʱ��
if %cho% EQU 7 .\network\zh-Hans\�鿴��������IP��ַ
if %cho% EQU 8 .\system\zh-Hans\screenfetch
if %cho% EQU 9 .\system\zh-Hans\�鿴����
if %cho% EQU 10 .\system\zh-Hans\�鿴Ӳ����Ϣ
if %cho% EQU 11 .\system\zh-Hans\��ʱ�ػ�
if %cho% EQU 12 .\system\zh-Hans\���ϵͳ�ļ�������
if %cho% EQU 13 .\system\zh-Hans\����USB�豸
if %cho% EQU 14 .\system\zh-Hans\��ʽ�ļ�����
if %cho% EQU 15 .\system\zh-Hans\�����޸�DLLע��
if %cho% EQU 16 .\system\zh-Hans\����USB�豸
if %cho% EQU 17 .\system\zh-Hans\ȥ����ͷ
if %cho% EQU 18 .\system\zh-Hans\��ȡ�û��б�
if %cho% EQU 19 .\system\zh-Hans\�޸����Ĭ�ϰ�װ�̷�
if %cho% EQU 20 .\system\zh-Hans\�����������
if %cho% EQU 21 .\visual\zh-Hans\�޸ĵ�ǰϵͳ����
if %cho% EQU 22 .\system\zh-Hans\��Ȩ����
if %cho% EQU 23 %windir%\system32\winver
if %cho% EQU 24 .\system\zh-Hans\DISM_TOOL
if %cho% EQU 25 .\unix\dash
if %cho% EQU 26 goto end
goto cho
:end

