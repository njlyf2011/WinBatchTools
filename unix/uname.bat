@echo off

rem Windows Batch Tools Copyright (C) 2016 NJLYF2011
rem 本程序从未提供品质担保。这是款自由软件，欢迎你在满足一定条件后对其再发布。

if "%1"=="" echo %OS%
if "%1"=="-r" ver
if "%1"=="-a" echo %OS% %computername% %date% Microsoft Windows