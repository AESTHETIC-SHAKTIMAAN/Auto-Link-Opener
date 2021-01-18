@echo off
if exist "Main.bat" (goto start) else (echo Main Bat file missing or the setup is already done!! & timeout /t 5 > nul)
exit 

:start 
move "Main.bat" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
cls
cd "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
echo Do not close this window until the setup is done !!
call "Main.bat"
cls
echo SETUP COMPLETE!!
timeout /t 3 > nul
exit

