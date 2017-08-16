rem WinBashTools Copyright 2017 lini3acc(追求i3的孩纸)
rem 本程序从未提供品质担保。这是款自由软件，欢迎你在满足一定条件后对其再发布。

@echo off
cls
echo.
echo DISM简易辅助工具(Beta)
echo.
echo 注意：本程序需要以管理员身份运行！
echo.
echo 请选择操作：
echo.
echo (1)获取镜像信息
echo (2)挂载镜像
echo (3)展开镜像
echo (4)卸载镜像
echo (5)将目录保存到镜像
echo (6)退出本程序
echo.
:ch
set /p cho= 请选择：
if %cho% EQU 1 goto ch1
if %cho% EQU 2 goto ch2
if %cho% EQU 3 goto ch3
if %cho% EQU 4 goto ch4
if %cho% EQU 5 goto ch5
if %cho% EQU 6 goto end
goto ch
:ch1
set /p imgfile= 请输入镜像文件的位置（如果目录有空格，请打双引号）：
dism /Get-Imageinfo /imagefile:%imgfile%
goto ch
:ch2
set /p imgfile= 请输入镜像文件的位置（如果目录有空格，请打双引号）：
set /p mntdir= 请输入镜像挂载目录（如果目录有空格，请打双引号）：
set /p idx= 请输入镜像索引号（如没有则输入0）：
set /p rdo= 是否只读(Y/N)：
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
echo 此功能将在未来加入，敬请期待！
goto ch
:ch4
set /p mntdir= 请输入镜像挂载目录（如果目录有空格，请打双引号）：
set /p comorn= 是否保存镜像(Y/N)：
if "%comorn%"=="Y" (
    dism /Unmount-Image /MountDir:%mntdir% /Commit
    goto ch
)
dism /Unmount-Image /MountDir:%mntdir% /Discard
goto ch
:ch5
echo 此功能将在未来加入，敬请期待！
goto ch
:end
