@echo off

rem Windows Batch Tools Copyright (C) 2016 NJLYF2011
rem �������δ�ṩƷ�ʵ��������ǿ������������ӭ��������һ������������ٷ�����

rem ����˵��ϻ���ף��λ��ʦ��ʦ�ڿ��֡�
rem ��ѧ�����ڴ�ף�ء�

title �޸ĵ�ǰ����
echo.
echo ������������޸ĵ�ǰϵͳ���⣬���ڹ���Ա��������С�

rem ����·��
set /p theme_path= ����������·����

rem ������ʱ�ļ���·����������ŪҲ��Ϊ�˷����޸ġ�
set tmp_path=%temp%\tmp_reg.reg

rem ������������Ҳ��Ϊ�˱��������
del %tmp_path%

rem ����Ҫ�Ķ���д����ʱ�ļ�
echo Windows Registry Editor Version 5.00 >%tmp_path%
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ThemeManager] >>%tmp_path%
echo "WCreatedUser"="1" >>%tmp_path%
echo "ThemeActive"="1" >>%tmp_path%
echo "LoadedBefore"="1" >>%tmp_path%
echo "LastUserLangID"="2052" >>%tmp_path%
echo "DllName"=%theme_path% >>%tmp_path%
echo "ColorName"="NormalColor" >>%tmp_path%
echo "SizeName"="NormalSize" >>%tmp_path%

rem ������ý��ˣ�������ע���
regedit /s %tmp_path%

rem ����һ���������
net stop Themes
net start themes 

rem ɾ���� []~(������)~*
del %tmp_path%

rem 2333333
echo �����ɹ���ɣ��밴�����������
pause>nul