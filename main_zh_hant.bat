rem WinBatchTools Copyleft 2017 i3boyacc(�l�Di3���į�)
rem ���{�Ǳq�����ѫ~���O�C�o�O�ڦۥѳn��A�w��A�b�����@�w�������A�o�G�C

@echo off
cd /d %~dp0
title WinBatchTools
cls
:lst
echo.
echo �w��ϥ�WinBatchTools�A�п�ܱz���ާ@
echo.
echo �Y�Ǿާ@�i��ݭn�޲z���v���A�n����o�Ǿާ@�A�ХH�޲z���������楻�{�ǡC
echo ���槹�ާ@��A�{�ǥi��|�۰ʰh�X�C
echo.
echo �ɮ׾ާ@�G
echo (1)�Ыؤ奻�ɮ�         (2)����ɮצC��
echo �����ާ@�G
echo (3)���պ����O�_�q�Z    (4)�d�ݤu�@��
echo (5)�d�ݺ�����T      (6)�չ�ɶ�
echo (7)�d�ݤ����Ҧ�IP�a�}
echo �t�ξާ@�G
echo (8)screenfetch     (9)�d�ݳB�z��
echo (10)�d�ݵw���T (11)�w������
echo (12)�ˬd�t���ɮק����  (13)�T��USB�˸m
echo (14)�¦��ɮײM�z (15)��q�״_DLL���U
echo (16) ��USB�˸m        (17)�h���b�Y
echo (18)�����Τ�C�� (19)�ק�n���q�{�w�˽L��
echo (20)���R�W�q�� (21)�ק��e�t�ΥD�D
echo (22)�n����v�޲z        (23)�d�ݨt�Ϊ�����T
echo (24)DISM²�����U�u��(1.0 Beta For WinBatchTools)
echo �䥦�ާ@�G
echo (25)�i�J�uUnix �R�O�� Windows �R�O�v
echo (26)�h�X�{��
:cho
echo.
set /p cho= �п�ܡG
echo.
if %cho% EQU 1 .\file\zh-hant\²���奻�Ыؾ�
if %cho% EQU 2 .\file\zh-hant\����ɮצC��
if %cho% EQU 3 .\network\zh-hant\���պ����O�_�q�Z
if %cho% EQU 4 .\network\zh-hant\�d�ݤu�@��
if %cho% EQU 5 .\network\zh-hant\�d�ݺ�����T
if %cho% EQU 6 .\network\zh-hant\�չ�ɶ�
if %cho% EQU 7 .\network\zh-hant\�d�ݤ����Ҧ�IP�a�}
if %cho% EQU 8 .\system\zh-hant\screenfetch
if %cho% EQU 9 .\system\zh-hant\�d�ݳB�z��
if %cho% EQU 10 .\system\zh-hant\�d�ݵw���T
if %cho% EQU 11 .\system\zh-hant\�w������
if %cho% EQU 12 .\system\zh-hant\�ˬd�t���ɮק����
if %cho% EQU 13 .\system\zh-hant\�T��USB�˸m
if %cho% EQU 14 .\system\zh-hant\�¦��ɮײM�z
if %cho% EQU 15 .\system\zh-hant\��q�״_DLL���U
if %cho% EQU 16 .\system\zh-hant\�ҥ�USB�˸m
if %cho% EQU 17 .\system\zh-hant\�h���b�Y
if %cho% EQU 18 .\system\zh-hant\�����Τ�C��
if %cho% EQU 19 .\system\zh-hant\�ק�n���q�{�w�˽L��
if %cho% EQU 20 .\system\zh-hant\���R�W�q��
if %cho% EQU 21 .\visual\zh-hant\�ק��e�t�ΥD�D
if %cho% EQU 22 .\system\zh-hant\���v�޲z
if %cho% EQU 23 %windir%\system32\winver
if %cho% EQU 24 .\system\zh-hant\DISM_TOOL
if %cho% EQU 25 .\unix\dash
if %cho% EQU 26 goto end
goto cho
:end


