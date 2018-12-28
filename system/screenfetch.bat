@echo off
rem Windows Batch Tools Copyright (C) 2016-2017 NJLYF2011, Leo3418
rem �������δ�ṩƷ�ʵ��������ǿ������������ӭ��������һ������������ٷ�����
rem Licensed under the GPLv3 license.

setlocal ENABLEDELAYEDEXPANSION

rem ���ָ��/hѡ���ʾ����
if "%1"=="-h" goto help
if "%1"=="/h" goto help

rem ���ָ��/Lѡ�ֻ��ʾWindows�ձ�
if "%1"=="-L" goto portrait
if "%1"=="/L" goto portrait

for /f "tokens=1,* delims==" %%a in ('wmic computersystem get UserName /value') do (
set /a tee+=1
rem ��������ƺ͵�ǰ�û�
if "!tee!" == "3" set user=%%b
)
set tee=0
for /f "tokens=1,* delims==" %%a in ('wmic os get Caption^,OSArchitecture /value') do (
set /a tee+=1
rem ϵͳ�汾
if "!tee!" == "3" set os=%%b
rem ϵͳ����
if "!tee!" == "4" set type=%%b
)
set tee=0
for /f "tokens=1,* delims==" %%a in ('wmic cpu get Name /value') do (
set /a tee+=1
rem CPU����
if "!tee!" == "3" set cpu=%%b
)
set tee=0
for /f "tokens=1,* delims==" %%a in ('systeminfo^|find ":  "') do (
set /a tee+=1
rem ����ʱ��
if "!tee!" == "11" set boottime=%%a
rem ���ڴ�
if "!tee!" == "23" set totalram=%%a
rem �����ڴ�
if "!tee!" == "24" set availram=%%a
)

rem ���ָ��/nѡ�����ʾWindows�ձ�
if "%1"=="-n" goto nologo
if "%1"=="/n" goto nologo

rem ���ָ��/pѡ���������ģʽ
if "%1"=="-p" goto portrait
if "%1"=="/p" goto portrait

rem ��ʾWindows�ձ��ϵͳ��Ϣ

rem ���ϵͳ�汾����ʾ���ʵ�Windows�ձ�
ver | find "6.2." > NUL &&  goto post7
ver | find "6.3." > NUL &&  goto post7
ver | find "10.0." > NUL &&  goto post7

:pre8
echo          `,:,`               %user%
echo       .:::::::::`            OS: %os%
echo       :::::::::; :;:     `;  Kernel: Windows NT
echo      .:::::::::  ;;;;;;;;;;  Uptime: %boottime:~12%
echo      :::::::::; ;;;;;;;;;;   CPU: %cpu%
echo     ,;.    .;:  ;;;;;;;;;;   RAM: %availram:~11% / %totalram:~12%
echo      ,:::::,   ;;;;;;;;;;   
echo    .:::::::::    .;;;;:     
echo    :::::::::: ::::.``,::    
echo   .:::::::::  ::::::::::    
echo   :::::::::: ::::::::::     
echo  ,.      ,:  ::::::::::     
echo             ,:::::::::      
echo                 ``          
pause>nul
goto end

:post7
echo                     ....:::  %user%
echo         .... ::::::::::::::  OS: %os%
echo  ::::::::::. ::::::::::::::  Kernel: Windows NT
echo  ::::::::::. ::::::::::::::  Uptime: %boottime:~12%
echo  ::::::::::. ::::::::::::::  CPU: %cpu%
echo  ::::::::::. ::::::::::::::  RAM: %availram:~11% / %totalram:~12%
echo  ``````````  `````````````` 
echo  ::::::::::. :::::::::::::: 
echo  ::::::::::. :::::::::::::: 
echo  ::::::::::. :::::::::::::: 
echo  ::::::::::. :::::::::::::: 
echo  ::::::::::. :::::::::::::: 
echo         ^^^^^^. :::::::::::::: 
echo                     ^^^^^^^^::: 
rem ���������� ^ ���Ų��ܱ�ʶ��Ϊһ�� ^
pause>nul
goto end

rem ����ģʽ
:portrait
rem ���ϵͳ�汾����ʾ���ʵ�Windows�ձ�
ver | find "6.2." > NUL &&  goto post7logo
ver | find "6.3." > NUL &&  goto post7logo
ver | find "10.0." > NUL &&  goto post7logo

:pre8logo
echo          `,:,`              
echo       .:::::::::`           
echo       :::::::::; :;:     `; 
echo      .:::::::::  ;;;;;;;;;; 
echo      :::::::::; ;;;;;;;;;;  
echo     ,;.    .;:  ;;;;;;;;;;  
echo      ,:::::,   ;;;;;;;;;;   
echo    .:::::::::    .;;;;:     
echo    :::::::::: ::::.``,::    
echo   .:::::::::  ::::::::::    
echo   :::::::::: ::::::::::     
echo  ,.      ,:  ::::::::::     
echo             ,:::::::::      
echo                 ``      

rem ���ָ��/Lѡ�ֻ��ʾWindows�ձ�
if "%1"=="-L" goto end
if "%1"=="/L" goto end

goto nologo

:post7logo
echo                     ....::: 
echo         .... :::::::::::::: 
echo  ::::::::::. :::::::::::::: 
echo  ::::::::::. :::::::::::::: 
echo  ::::::::::. :::::::::::::: 
echo  ::::::::::. :::::::::::::: 
echo  ``````````  `````````````` 
echo  ::::::::::. :::::::::::::: 
echo  ::::::::::. :::::::::::::: 
echo  ::::::::::. :::::::::::::: 
echo  ::::::::::. :::::::::::::: 
echo  ::::::::::. :::::::::::::: 
echo         ^^^^^^. :::::::::::::: 
echo                     ^^^^^^^^::: 

if "%1"=="-L" goto end
if "%1"=="/L" goto end

:nologo
echo %user%
echo OS: %os%
echo Kernel: %type%
echo Uptime: %boottime:~12%
echo CPU: %cpu%
echo RAM: %availram:~11% / �� %totalram:~12%
goto end

:help
echo ֧�ֵ� Windows �汾��
echo 	Windows Vista��Windows 7��Windows 8��Windows 8.1 �� Windows 10��
echo.
echo ѡ�
echo 	/n	����ʾ ASCII Windows �ձꡣ
echo 	/p	������ʾ�����
echo 	/L 	ֻ��ʾ ASCII Windows �ձꡣ
echo 	/h	��ʾ�˰�����Ϣ��
goto end

:end