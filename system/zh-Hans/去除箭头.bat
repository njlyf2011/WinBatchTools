@echo off

rem ��Ȩ��������������������������磬��Ȩδ֪��

title ϵͳ������
echo ============================================================================
echo                                ȥ����ݷ�ʽ��ͷ
echo.
echo ���������еĴ�����Դ�����硣
echo ���������ȥ����ݷ�ʽ�ļ�ͷ���ʺϲ�ϲ����ݷ�ʽ��ͷ���û�ʹ�á�
echo ��������Ҫ�ڹ���ԱȨ�������С�
echo.
echo ============================================================================
echo ���������ʼִ�С�����
pause>nul

reg delete HKEY_CLASSES_ROOT\lnkfile /v IsShortcut /f
reg delete HKEY_CLASSES_ROOT\piffile /v IsShortcut /f

rem ����explorer
taskkill /f /im explorer.exe
start explorer.exe

RunDll32.exe USER32.DLL,UpdatePerUserSystemParameters

echo �ɹ�ִ�С�
pause