rem WinBatchTools Copyleft 2017 i3boyacc(追求i3的孩紙)
rem 本程序從未提供品質擔保。這是款自由軟體，歡迎你在滿足一定條件後對其再發佈。

@echo off
cd /d %~dp0
title WinBatchTools
cls
:lst
echo.
echo 歡迎使用WinBatchTools，請選擇您的操作
echo.
echo 某些操作可能需要管理員權限，要執行這些操作，請以管理員身份執行本程序。
echo 執行完操作後，程序可能會自動退出。
echo.
echo 檔案操作：
echo (1)創建文本檔案         (2)獲取檔案列表
echo 網絡操作：
echo (3)測試網絡是否通暢    (4)查看工作組
echo (5)查看網絡資訊      (6)校對時間
echo (7)查看內網所有IP地址
echo 系統操作：
echo (8)screenfetch     (9)查看處理序
echo (10)查看硬體資訊 (11)定時關機
echo (12)檢查系統檔案完整性  (13)禁用USB裝置
echo (14)舊式檔案清理 (15)批量修復DLL註冊
echo (16) 用USB裝置        (17)去除箭頭
echo (18)提取用戶列表 (19)修改軟體默認安裝盤符
echo (20)重命名電腦 (21)修改當前系統主題
echo (22)軟體授權管理        (23)查看系統版本資訊
echo (24)DISM簡易輔助工具(1.0 Beta For WinBatchTools)
echo 其它操作：
echo (25)進入「Unix 命令轉 Windows 命令」
echo (26)退出程序
:cho
echo.
set /p cho= 請選擇：
echo.
if %cho% EQU 1 .\file\zh-hant\簡易文本創建器
if %cho% EQU 2 .\file\zh-hant\獲取檔案列表
if %cho% EQU 3 .\network\zh-hant\測試網絡是否通暢
if %cho% EQU 4 .\network\zh-hant\查看工作組
if %cho% EQU 5 .\network\zh-hant\查看網絡資訊
if %cho% EQU 6 .\network\zh-hant\校對時間
if %cho% EQU 7 .\network\zh-hant\查看內網所有IP地址
if %cho% EQU 8 .\system\zh-hant\screenfetch
if %cho% EQU 9 .\system\zh-hant\查看處理序
if %cho% EQU 10 .\system\zh-hant\查看硬體資訊
if %cho% EQU 11 .\system\zh-hant\定時關機
if %cho% EQU 12 .\system\zh-hant\檢查系統檔案完整性
if %cho% EQU 13 .\system\zh-hant\禁用USB裝置
if %cho% EQU 14 .\system\zh-hant\舊式檔案清理
if %cho% EQU 15 .\system\zh-hant\批量修復DLL註冊
if %cho% EQU 16 .\system\zh-hant\啟用USB裝置
if %cho% EQU 17 .\system\zh-hant\去除箭頭
if %cho% EQU 18 .\system\zh-hant\提取用戶列表
if %cho% EQU 19 .\system\zh-hant\修改軟體默認安裝盤符
if %cho% EQU 20 .\system\zh-hant\重命名電腦
if %cho% EQU 21 .\visual\zh-hant\修改當前系統主題
if %cho% EQU 22 .\system\zh-hant\授權管理
if %cho% EQU 23 %windir%\system32\winver
if %cho% EQU 24 .\system\zh-hant\DISM_TOOL
if %cho% EQU 25 .\unix\dash
if %cho% EQU 26 goto end
goto cho
:end


