@echo off
rem ��ȡ��ǰ����������û�
rem ��Ȩ���� - JM CMD@XP

echo ��ǰ�������û��б�
for /f "skip=4 tokens=1-3" %%i in ('net user') do (
    if not "%%i"=="����ɹ���ɡ�" if not "%%i"=="" echo %%i
    if not "%%j"=="" echo %%j
    if not "%%k"=="" echo %%k
)
echo.
pause