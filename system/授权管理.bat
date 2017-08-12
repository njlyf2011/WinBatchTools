rem WinBashTools Copyleft 2017 lini3acc(追求i3的孩纸)
rem 本程序从未提供品质担保。这是款自由软件，欢迎你在满足一定条件后对其再发布。

title 软件授权管理工具
@echo off
cls
:main
echo.
echo 软件授权管理工具
echo.
echo 以下所有操作均需要管理员权限。如果您没有以管理员身份运行本程序，请按要求重新运行本程序。
echo.
echo 查看产品许可：
echo (1)查看系统许可信息    (2)查看系统详细许可信息
echo (3)查看当前许可状态的截止日期
echo 激活相关：
echo (4)安装产品密钥          (5)卸载产品密钥
echo (6)激活Windows          (7)重置许可状态
echo (8)从注册表中清除产品密钥 
echo (9)安装许可证文件         (10)重新安装许可证文件
echo (11)显示安装ID以用于脱机激活
echo (12)使用确认ID激活产品
echo KMS客户端选项：
echo (13)设置KMS主机名称与端口   (14)清除KMS主机设置
echo 其它操作：
echo (15)重新显示该部分内容      (16)退出本程序
:cho
set /p cho= 请选择：
if %cho% EQU 1 goto c1
if %cho% EQU 2 goto c2
if %cho% EQU 3 goto c3
if %cho% EQU 4 goto c4
if %cho% EQU 5 goto c5
if %cho% EQU 6 goto c6
if %cho% EQU 7 goto c7
if %cho% EQU 8 goto c8
if %cho% EQU 9 goto c9
if %cho% EQU 10 goto c10
if %cho% EQU 11 goto c11
if %cho% EQU 12 goto c12
if %cho% EQU 13 goto c13
if %cho% EQU 14 goto c14
if %cho% EQU 15 goto c15
if %cho% EQU 16 goto c16
goto cho
:c1
slmgr -dli
goto cho
:c2
slmgr -dlv
goto cho
:c3
slmgr -xpr
goto cho
:c4
set /p key= 请输入产品密钥：
slmgr -ipk %key%
goto cho
:c5
slmgr -upk
goto cho
:c6
slmgr -ato
goto cho
:c7
slmgr -rearm
goto cho
:c8
slmgr -cpky
goto cho
:c9
set /p license= 请输入证书位置：
slmgr -ilc %license%
goto cho
:c10
slmgr -rilc
goto cho
:c11
slmgr -dti
goto cho
:c12
set /p id= 请输入激活ID：
slmgr -atp %id% 
goto cho
:c13
set /p kms= 请输入KMS主机名称(及端口号)：
slmgr -skms %kms% 
goto cho
:c14
slmgr -ckms
goto cho
:c15
goto main
:c16
exit
