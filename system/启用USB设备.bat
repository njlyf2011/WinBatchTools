@echo off

rem ��Ȩ��������������������������磬��Ȩδ֪��

title ���� USB �豸
echo.
echo ���棺�����򽫻��޸�����ϵͳ���ã�����˼����С�
echo.
pause
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\USBSTOR /v Start /t REG_DWORD /d 3 /f
echo.
echo �����ɹ���ɡ�

rem �Է���һ��
set choice=
set /p choice=���ý���ע������Ч����������������ע��ô��Y/N����

if "%choice%=="y" shutdown -l
if "%choice%=="n" exit