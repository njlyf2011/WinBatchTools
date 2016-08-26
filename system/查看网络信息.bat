@echo off

rem 版权声明：此批处理代码来自于网上，属于公有领域。

@echo off
netsh -c interface dump >网络信息.txt

:main
cls
set choice=
echo 当前有三个选项：
echo 1.查看网络信息
echo 2.重新设置
echo Q.退出

set /p choice=1……查看网络信息，2……重新设置，Q……退出
if "%choice%"=="1" start 网络信息.txt
if "%choice%"=="2" netsh -f 网络信息.txt
if "%choice%"=="q" exit
goto main