rem WinBatchTools Copyright 2017 i3boyacc(׷��i3�ĺ�ֽ)
rem �������δ�ṩƷ�ʵ��������ǿ������������ӭ��������һ������������ٷ�����
rem Licensed under the GNU GPLv3 license.

@echo off
cls
echo.
echo DISM���׸������� 1.0 Beta for WinBatchTools
echo.
echo ע�⣺��������Ҫ�Թ���Ա������У�
echo.
echo ��ѡ�������
echo.
echo (1)��ȡ������Ϣ
echo (2)���ؾ���
echo (3)չ������
echo (4)ж�ؾ���
echo (5)��Ŀ¼���񵽾���
echo (6)�˳�������
echo.
:ch
set /p cho= ��ѡ��
if %cho% EQU 1 goto ch1
if %cho% EQU 2 goto ch2
if %cho% EQU 3 goto ch3
if %cho% EQU 4 goto ch4
if %cho% EQU 5 goto ch5
if %cho% EQU 6 goto end
goto ch
:ch1
set /p imgfile= �����뾵���ļ���λ�ã����Ŀ¼�пո����˫���ţ���
dism /Get-Imageinfo /imagefile:%imgfile%
goto ch
:ch2
set /p imgfile= �����뾵���ļ���λ�ã����Ŀ¼�пո����˫���ţ���
set /p mntdir= �����뾵�����Ŀ¼�����Ŀ¼�пո����˫���ţ���
set /p idx= �����뾵�������ţ���û��������0����
set /p rdo= �Ƿ�ֻ��(Y/N)��
if "%rdo%"=="Y" (
    if "%idx%"=="0" (
        dism /Mount-Image /ImageFile:%imgfile% /MountDir:%mntdir% /ReadOnly
        goto ch
    )
    dism /Mount-Image /ImageFile:%imgfile% /Index:%idx% /MountDir:%mntdir% /ReadOnly
    goto ch
)
if "%idx%"=="0" (
    dism /Mount-Image /ImageFile:%imgfile% /MountDir:%mntdir% 
    goto ch
)
dism /Mount-Image /ImageFile:%imgfile% /Index:%idx% /MountDir:%mntdir%
goto ch
:ch3
set /p imgfile= �����뾵���ļ���λ�ã����Ŀ¼�пո����˫���ţ���
set /p mntdir= �����뾵��չ��Ŀ¼�����Ŀ¼�пո����˫���ţ���
set /p idx= �����뾵�������ţ���û��������0����
dism /Apply-Image /ImageFile:%imgfile% /Index:%idx% /ApplyDir:%mntdir%
goto ch
:ch4
set /p mntdir= �����뾵�����Ŀ¼�����Ŀ¼�пո����˫���ţ���
set /p comorn= �Ƿ񱣴澵��(Y/N)��
if "%comorn%"=="Y" (
    dism /Unmount-Image /MountDir:%mntdir% /Commit
    goto ch
)
dism /Unmount-Image /MountDir:%mntdir% /Discard
goto ch
:ch5
set /p cptdir= �����������񲢱��浽�����Ŀ¼�����Ŀ¼�пո����˫���ţ���
set /p imgfile= �����뾵���ļ���λ�ã����Ŀ¼�пո����˫���ţ���
set /p name= �����뾵�����ƣ����пո����˫���ţ���
dism /Capture-Image /ImageFile:%imgfile% /CaptureDir:%cptdir% /Name:%name%
goto ch
:end