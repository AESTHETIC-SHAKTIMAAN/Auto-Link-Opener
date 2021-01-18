@echo off
cd %userprofile%
if exist "Auto Link Opener" (goto olduser) else goto newuser

:newuser
color 1f
mkdir "Auto Link Opener"
cd "Auto Link Opener"
cls
Echo Enter the links in format : www.example.com/
echo Links with Https or Http will not start
Echo Enter Link 1 : 
set /p link1=
Echo Enter Link 2 : 
set /p link2=
cls
echo %link1% > url1.txt
echo %link2% > url2.txt
cls
goto olduser

:olduser
cd "Auto Link Opener"
set /p open1=<"url1.txt"
set /p open2=<"url2.txt"
cls
start %open1%
start %open2%
cls
exit
