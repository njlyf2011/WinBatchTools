@echo off

rem Windows Batch Tools Copyright(C) 2017 NJLYF2011(Simple)
rem Licensed under the MIT License.

title 獲取指定目錄檔案清單

:main
 rem 設定路徑
 set showpath=
 set /p showpath= 請輸入需要查看的路徑，完成後請按回車（直接回車將顯示當前目錄的內容）：
 cls
 echo.
 echo 正在生成中，請稍候。對於比較大的目錄，比如 Win7 之後 的 WinSxS ，可能需要很長時間。
 dir /a-d /s /b %showpath% >%temp%\showpath.txt
 
 rem 至於為什麼將結果用文本編輯器開啟而不是 CMD，是因為檔案過多可能會導致無法顯示上方檔案。
 start %temp%\showpath.txt
 
 rem 清空變量
 set showpath=
 
 rem 詢問是否保留結果
 set save_result=
 echo.
 set /p save_result= 是否保留結果？(Y/N):
 if  "%save_result%"=="Y"  copy %temp%\showpath.txt %cd%\result.txt
 if  "%save_result%"=="YES"  copy %temp%\showpath.txt %cd%\result.txt
 rem 大小寫區分
 if  "%save_result%"=="y"  copy %temp%\showpath.txt %cd%\result.txt
 if  "%save_result%"=="yes"  copy %temp%\showpath.txt %cd%\result.txt
 
 rem 收尾工作
 del %temp%\showpath.txt
 set save_result=
 
 echo 完成。請按任意鍵退出。
 pause>nul
 
