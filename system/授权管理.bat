rem WinBashTools Copyleft 2017 lini3acc(׷��i3�ĺ�ֽ)
rem �������δ�ṩƷ�ʵ��������ǿ������������ӭ��������һ������������ٷ�����
rem �������벻Ҫ���ڵ��漤����;������
rem Licensed under the GNU GPLv3 license.

title �����Ȩ������
@echo off
cls
:main
echo.
echo �����Ȩ������
echo.
echo �������в�������Ҫ����ԱȨ�ޡ������û���Թ���Ա������б������밴Ҫ���������б�����
echo �������벻Ҫ���ڵ��漤����;����������ҵ���ʵġ�������ܻ���ɷ������⡣
echo.
echo.
echo �鿴��Ʒ��ɣ�
echo (1)�鿴ϵͳ�����Ϣ    (2)�鿴ϵͳ��ϸ�����Ϣ
echo (3)�鿴��ǰ���״̬�Ľ�ֹ����
echo ������أ�
echo (4)��װ��Ʒ��Կ          (5)ж�ز�Ʒ��Կ
echo (6)����Windows          (7)�������״̬
echo (8)��ע����������Ʒ��Կ 
echo (9)��װ���֤�ļ�         (10)���°�װ���֤�ļ�
echo (11)��ʾ��װID�������ѻ�����
echo (12)ʹ��ȷ��ID�����Ʒ
echo KMS�ͻ���ѡ�
echo (13)����KMS����������˿�   (14)���KMS��������
echo ����������
echo (15)������ʾ�ò�������      (16)�˳�������
:cho
set /p cho= ��ѡ��
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
set /p key= �������Ʒ��Կ��
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
set /p license= ������֤��λ�ã�
slmgr -ilc %license%
goto cho
:c10
slmgr -rilc
goto cho
:c11
slmgr -dti
goto cho
:c12
set /p id= �����뼤��ID��
slmgr -atp %id% 
goto cho
:c13
set /p kms= ������KMS��������(���˿ں�)��
slmgr -skms %kms% 
goto cho
:c14
slmgr -ckms
goto cho
:c15
goto main
:c16
exit
