@echo off

rem Windows Batch Tools Copyright(C) 2017 NJLYF2011(Simple)
rem Licensed under the MIT License.

title ������w�ؿ��ɮײM��

:main
 rem �]�w���|
 set showpath=
 set /p showpath= �п�J�ݭn�d�ݪ����|�A������Ы��^���]�����^���N��ܷ�e�ؿ������e�^�G
 cls
 echo.
 echo ���b�ͦ����A�еy�ԡC������j���ؿ��A��p Win7 ���� �� WinSxS �A�i��ݭn�ܪ��ɶ��C
 dir /a-d /s /b %showpath% >%temp%\showpath.txt
 
 rem �ܩ󬰤���N���G�Τ奻�s�边�}�ҦӤ��O CMD�A�O�]���ɮ׹L�h�i��|�ɭP�L�k��ܤW���ɮסC
 start %temp%\showpath.txt
 
 rem �M���ܶq
 set showpath=
 
 rem �߰ݬO�_�O�d���G
 set save_result=
 echo.
 set /p save_result= �O�_�O�d���G�H(Y/N):
 if  "%save_result%"=="Y"  copy %temp%\showpath.txt %cd%\result.txt
 if  "%save_result%"=="YES"  copy %temp%\showpath.txt %cd%\result.txt
 rem �j�p�g�Ϥ�
 if  "%save_result%"=="y"  copy %temp%\showpath.txt %cd%\result.txt
 if  "%save_result%"=="yes"  copy %temp%\showpath.txt %cd%\result.txt
 
 rem �����u�@
 del %temp%\showpath.txt
 set save_result=
 
 echo �����C�Ы����N��h�X�C
 pause>nul
 
