@echo off

rem ����������������Դ������

title ���� USB �豸
echo.
echo ���棺�����򽫻��޸�����ϵͳ���ã�����˼����С�
echo ���������ִ�У���ִ�б�Ŀ¼�µġ�����USB�豸.bat��
echo.
pause
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\USBSTOR /v start /t reg_dword /d 0x4 /f
echo.
echo �����ɹ���ɡ�

rem �Է���һ��
set choice=
set /p choice=���ý���ע������Ч����������������ע��ô��Y/N����

if "%choice%=="y" shutdown -l
if "%choice%=="n" exit