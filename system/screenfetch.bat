@echo off
rem Windows Batch Tools Copyright (C) 2016-2017 NJLYF2011, Leo3418
rem 本程序从未提供品质担保。这是款自由软件，欢迎你在满足一定条件后对其再发布。

setlocal ENABLEDELAYEDEXPANSION

rem 如果指定/h选项，显示帮助
if "%1"=="-h" goto help
if "%1"=="/h" goto help

rem 如果指定/L选项，只显示Windows徽标
if "%1"=="-L" goto portrait
if "%1"=="/L" goto portrait

for /f "tokens=1,* delims==" %%a in ('wmic computersystem get UserName /value') do (
set /a tee+=1
rem 计算机名称和当前用户
if "!tee!" == "3" set user=%%b
)
set tee=0
for /f "tokens=1,* delims==" %%a in ('wmic os get Caption^,OSArchitecture /value') do (
set /a tee+=1
rem 系统版本
if "!tee!" == "3" set os=%%b
rem 系统类型
if "!tee!" == "4" set type=%%b
)
set tee=0
for /f "tokens=1,* delims==" %%a in ('wmic cpu get Name /value') do (
set /a tee+=1
rem CPU名称
if "!tee!" == "3" set cpu=%%b
)
set tee=0
for /f "tokens=1,* delims==" %%a in ('systeminfo^|find ":  "') do (
set /a tee+=1
rem 启动时间
if "!tee!" == "11" set boottime=%%a
rem 总内存
if "!tee!" == "23" set totalram=%%a
rem 可用内存
if "!tee!" == "24" set availram=%%a
)

rem 如果指定/n选项，不显示Windows徽标
if "%1"=="-n" goto nologo
if "%1"=="/n" goto nologo

rem 如果指定/p选项，进入纵排模式
if "%1"=="-p" goto portrait
if "%1"=="/p" goto portrait

rem 显示Windows徽标和系统信息

rem 检测系统版本，显示合适的Windows徽标
ver | find "6.2." > NUL &&  goto post7
ver | find "6.3." > NUL &&  goto post7
ver | find "10.0." > NUL &&  goto post7

:pre8
echo          `,:,`               %user%
echo       .:::::::::`            OS: %os%
echo       :::::::::; :;:     `;  Kernel: Windows NT
echo      .:::::::::  ;;;;;;;;;;  启动时间: %boottime:~12%
echo      :::::::::; ;;;;;;;;;;   CPU: %cpu%
echo     ,;.    .;:  ;;;;;;;;;;   RAM: %availram:~11% 可用，共 %totalram:~12%
echo      ,:::::,   ;;;;;;;;;;   
echo    .:::::::::    .;;;;:     
echo    :::::::::: ::::.``,::    
echo   .:::::::::  ::::::::::    
echo   :::::::::: ::::::::::     
echo  ,.      ,:  ::::::::::     
echo             ,:::::::::      
echo                 ``          
pause
goto end

:post7
echo                     ....:::  %user%
echo         .... ::::::::::::::  OS: %os%
echo  ::::::::::. ::::::::::::::  Kernel: Windows NT
echo  ::::::::::. ::::::::::::::  启动时间: %boottime:~12%
echo  ::::::::::. ::::::::::::::  CPU: %cpu%
echo  ::::::::::. ::::::::::::::  RAM: %availram:~11% 可用，共 %totalram:~12%
echo  ``````````  `````````````` 
echo  ::::::::::. :::::::::::::: 
echo  ::::::::::. :::::::::::::: 
echo  ::::::::::. :::::::::::::: 
echo  ::::::::::. :::::::::::::: 
echo  ::::::::::. :::::::::::::: 
echo         ^^^^^^. :::::::::::::: 
echo                     ^^^^^^^^::: 
rem 两个连续的 ^ 符号才能被识别为一个 ^
pause
goto end

rem 纵排模式
:portrait
rem 检测系统版本，显示合适的Windows徽标
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

rem 如果指定/L选项，只显示Windows徽标
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
echo 系统类型: %type%
echo 启动时间: %boottime:~12%
echo CPU: %cpu%
echo RAM: %availram:~11% 可用，共 %totalram:~12%
goto end

:help
echo 支持的 Windows 版本：
echo 	Windows Vista，Windows 7，Windows 8，Windows 8.1 和 Windows 10。
echo.
echo 选项：
echo 	/n	不显示 ASCII Windows 徽标。
echo 	/p	纵向显示输出。
echo 	/L 	只显示 ASCII Windows 徽标。
echo 	/h	显示此帮助信息。
goto end

:end