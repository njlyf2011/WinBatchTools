@echo off

rem Windows Batch Tools Copyright(C) 2017 NJLYF2011(Simple)
rem �������δ�ṩƷ�ʵ��������ǿ������������ӭ��������һ������������ٷ�����

title ��ȡָ��Ŀ¼�ļ��б�

:main
 rem �趨·��
 set showpath=
 set /p showpath= ��������Ҫ�鿴��·������ɺ��밴�س���ֱ�ӻس�����ʾ��ǰĿ¼�����ݣ���
 cls
 echo.
 echo ���������У����Ժ򡣶��ڱȽϴ��Ŀ¼������ Win7 ֮�� �� WinSxS ��������Ҫ�ܳ�ʱ�䡣
 dir /a-d /s /b %showpath% >%temp%\showpath.txt
 
 rem ����Ϊʲô��������ı��༭���򿪶����� CMD������Ϊ�ļ�������ܻᵼ���޷���ʾ�Ϸ��ļ���
 start %temp%\showpath.txt
 
 rem ��ձ���
 set showpath=
 
 rem ѯ���Ƿ������
 set save_result=
 echo.
 set /p save_result= �Ƿ��������(Y/N):
 if  "%save_result%"=="Y"  copy %temp%\showpath.txt %cd%\result.txt
 if  "%save_result%"=="YES"  copy %temp%\showpath.txt %cd%\result.txt
 rem ��Сд����
 if  "%save_result%"=="y"  copy %temp%\showpath.txt %cd%\result.txt
 if  "%save_result%"=="yes"  copy %temp%\showpath.txt %cd%\result.txt
 
 rem ��β����
 del %temp%\showpath.txt
 set save_result=
 
 echo ��ɡ��밴������˳���
 pause>nul
 