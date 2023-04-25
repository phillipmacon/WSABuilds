FOR /F "tokens=2*" %%A IN ('dism /online /get-features /format:table ^| find "VirtualMachinePlatform"') DO SET "VMP=%%B"
nhcolor 07 "  %White%ADB : %Yellow%%ADBCX% %Magenta%| %White%WSA : %Yellow%%WSACX% %Magenta%| %White%Virtual Machine Platform : %Yellow%%VMP% "
nhcolor 07 " ---------------------------------------------------------------------------------------------------------------------"
nhcolor 03 "  [1]   > %Green%Download & Install %Yellow%> %White%WSA %Magenta%| %SBlue%600MB"
nhcolor 03 "  [2]   > %Green%Remove WSA"

nhcolor 07 " ---------------------------------------------------------------------------------------------------------------------"
nhcolor 03 "  [3]   > %Green%Download & Install %Yellow%> %White%ADB %Magenta%| %SBlue%16MB"
nhcolor 03 "  [4]   > %Green%Remove ADB"
nhcolor 07 " ---------------------------------------------------------------------------------------------------------------------"
nhcolor 03 "  [5]   > %Green%Open > Windows Subsystem for Android"
nhcolor 03 "  [6]   > %Green%Open > Android Debug Bridge (ADB)"
nhcolor 03 "  [7]   > %Green%Connect Subsystem for Android via (ADB)"
nhcolor 03 "  [8]   > %Green%List of devices"
nhcolor 03 "  [9]   > %Green%Kill-Server (ADB)"
nhcolor 03 "  [10]  > %Green%Kill-Subsystem for Android Apps"
nhcolor 03 "  [11]  > %Green%Reboot Subsystem for Android"
nhcolor 03 "         %Red%NOTE: Please disconnect any Android Phones from USB devices before use."
nhcolor 07 " ---------------------------------------------------------------------------------------------------------------------"
nhcolor 03 "  [12]  > %Green%Install APK (Android Apps)"
nhcolor 03 "  [13]  > %Green%Install APK (Android Apps) - For Non-Administrator"
nhcolor 03 "         %Red%NOTE: APK filename must without symbol."
nhcolor 07 " ---------------------------------------------------------------------------------------------------------------------"
nhcolor 03 "         %Red%NOTE: APK Apps you can get it from Apkpure.com / Aptoide.com / apkvision.com"
nhcolor 07 " ---------------------------------------------------------------------------------------------------------------------"
nhcolor 03 "  [14]  > %Green%Root   %Cyan% > %Yellow%> %White%Windows Subsystem for Android"
nhcolor 03 "  [15]  > %Green%Unroot %Cyan% > %Yellow%> %White%Windows Subsystem for Android"
nhcolor 07 " ---------------------------------------------------------------------------------------------------------------------"
nhcolor 0D "  %White%Enable/Disabled Virtual Machine Platform
nhcolor 07 " ---------------------------------------------------------------------------------------------------------------------"
nhcolor 03 "  [16]  > %White%Virtual Machine Platform %Cyan% > %Green%Enabled"
nhcolor 03 "  [17]  > %White%Virtual Machine Platform %Cyan% > %Green%Disabled"
nhcolor 03 "         %Red%NOTE: If you want using VMWARE / Virtualbox Please Disabled Virtual Machine Platform."
nhcolor 07 " ---------------------------------------------------------------------------------------------------------------------"
nhcolor 03 "  [18]  > %White%Tutorial how to use / Get WSA Password https://youtu.be/6m0nxQcTnzk"
nhcolor 07 " ---------------------------------------------------------------------------------------------------------------------"
nhcolor 03 "  [0]   > %Green%Press %Cyan%0 %White%to Cancel or Back
nhcolor 07 " ====================================================================================================================="
nhcolor 0E ""
timeout /t 0 >nul
set /p op=Type option:
if "%op%"=="1" goto ADB01X
if "%op%"=="2" goto ADB02X
if "%op%"=="3" goto ADB03X
if "%op%"=="4" goto ADB04X
if "%op%"=="5" goto ADB05X
if "%op%"=="6" cls && goto ADB06X
if "%op%"=="7" goto ADB07X
if "%op%"=="8" goto ADB08X
if "%op%"=="9" goto ADB09X
if "%op%"=="10" goto ADB010X
if "%op%"=="11" goto ADB011X
if "%op%"=="12" goto ADB012X
if "%op%"=="13" goto ADB013X
if "%op%"=="14" goto ADB014X
if "%op%"=="15" goto ADB015X
if "%op%"=="16" goto VMP01X
if "%op%"=="17" goto VMP02X
if "%op%"=="18" start https://www.youtube.com/watch?v=6m0nxQcTnzk && goto 03ANDROIDX
if "%op%"=="0" goto ANDROID
cls
color 0b
echo This function not available yet
timeout /t 1 >nul
cls
goto :03ANDROIDX

:ADB01X
cd "%systemdrive%\ghost toolbox\wget"
cls
::PART00
for /f %%N in ('hashsum /a md5 WSA_2204.40000.19.0_x64.exe') do set "MD5=%%N"
if %MD5% equ 0688adf183cba929b5023458bda45eca (
nhcolor 08 " %Green%| PASS | %White%WSA_2204.40000.19.0_x64.exe
goto CHECKPART1
) else (
nhcolor 08 " %Red%| FAIL | WSA_2204.40000.19.0_x64.exe
del /q /f /s "WSA_2204.40000.19.0_x64.exe" >nul
goto WSADL
)
::PART01
:CHECKPART1
for /f %%N in ('hashsum /a md5 WSA_2204.40000.19.0_x64-1.bin') do set "MD5=%%N"
if %MD5% equ e64e99617514715eecc2ec5c536fd4d5 (
nhcolor 08 " %Green%| PASS | %White%WSA_2204.40000.19.0_x64-1.bin
goto CHECKPART2
) else (
nhcolor 08 " %Red%| FAIL | WSA_2204.40000.19.0_x64-1.bin
del /q /f /s "WSA_2204.40000.19.0_x64-1.bin" >nul
goto WSADL
)
::PART02
:CHECKPART2
for /f %%N in ('hashsum /a md5 WSA_2204.40000.19.0_x64-2.bin') do set "MD5=%%N"
if %MD5% equ 2dac1deb4498848c40c35d352f9c7eae (
nhcolor 08 " %Green%| PASS | %White%WSA_2204.40000.19.0_x64-2.bin
goto CHECKPART3
) else (
nhcolor 08 " %Red%| FAIL | WSA_2204.40000.19.0_x64-2.bin
del /q /f /s "WSA_2204.40000.19.0_x64-2.bin" >nul
goto WSADL
)
::PART03
:CHECKPART3
for /f %%N in ('hashsum /a md5 WSA_2204.40000.19.0_x64-3.bin') do set "MD5=%%N"
if %MD5% equ 15116c01e2ad48bbc82f6b0d68b07a46 (
nhcolor 08 " %Green%| PASS | %White%WSA_2204.40000.19.0_x64-3.bin
goto CHECKPART4
) else (
nhcolor 08 " %Red%| FAIL | WSA_2204.40000.19.0_x64-3.bin
del /q /f /s "WSA_2204.40000.19.0_x64-3.bin" >nul
goto WSADL
)
::PART04
:CHECKPART4
for /f %%N in ('hashsum /a md5 WSA_2204.40000.19.0_x64-4.bin') do set "MD5=%%N"
if %MD5% equ 40b6b98a19ac392ec354b6ae1cc7be5a (
nhcolor 08 " %Green%| PASS | %White%WSA_2204.40000.19.0_x64-4.bin
goto WSAINSTALL
) else (
nhcolor 08 " %Red%| FAIL | WSA_2204.40000.19.0_x64-4.bin
del /q /f /s "WSA_2204.40000.19.0_x64-4.bin" >nul
goto WSADL
)

:WSADL
:DLPART0
cls
for /f %%N in ('hashsum /a md5 WSA_2204.40000.19.0_x64.exe') do set "MD5=%%N"
if %MD5% equ 0688adf183cba929b5023458bda45eca (
nhcolor 08 " %Green%| PASS | %White%WSA_2204.40000.19.0_x64.exe
goto DLPART1
) else (
nhcolor 08 " %Red%| FAIL | WSA_2204.40000.19.0_x64.exe
del /q /f /s "WSA_2204.40000.19.0_x64.exe" >nul
)
cls
aria2c\aria2c -x16 -s16 --console-log-level=warn --no-conf --file-allocation=none --check-certificate=false --continue=true --allow-overwrite=true --auto-file-renaming=false --continue=true --allow-overwrite=true --auto-file-renaming=false "https://bit.ly/3x9jZSB" -o"WSA_2204.40000.19.0_x64.exe"

:DLPART1
cls
for /f %%N in ('hashsum /a md5 WSA_2204.40000.19.0_x64-1.bin') do set "MD5=%%N"
if %MD5% equ e64e99617514715eecc2ec5c536fd4d5 (
nhcolor 08 " %Green%| PASS | %White%WSA_2204.40000.19.0_x64-1.bin
goto DLPART2
) else (
nhcolor 08 " %Red%| FAIL | WSA_2204.40000.19.0_x64-1.bin
del /q /f /s "WSA_2204.40000.19.0_x64-1.bin" >nul
)
cls
aria2c\aria2c -x16 -s16 --console-log-level=warn --no-conf --file-allocation=none --check-certificate=false --continue=true --allow-overwrite=true --auto-file-renaming=false --continue=true --allow-overwrite=true --auto-file-renaming=false "https://archive.org/download/wsa_2204.40000.19.0_x64-1/wsa_2204.40000.19.0_x64-1.bin" -o"WSA_2204.40000.19.0_x64-1.bin"

:DLPART2
cls
for /f %%N in ('hashsum /a md5 WSA_2204.40000.19.0_x64-2.bin') do set "MD5=%%N"
if %MD5% equ 2dac1deb4498848c40c35d352f9c7eae (
nhcolor 08 " %Green%| PASS | %White%WSA_2204.40000.19.0_x64-2.bin
goto DLPART3
) else (
nhcolor 08 " %Red%| FAIL | WSA_2204.40000.19.0_x64-2.bin
del /q /f /s "WSA_2204.40000.19.0_x64-2.bin" >nul
)
cls
aria2c\aria2c -x16 -s16 --console-log-level=warn --no-conf --file-allocation=none --check-certificate=false --continue=true --allow-overwrite=true --auto-file-renaming=false --continue=true --allow-overwrite=true --auto-file-renaming=false "https://archive.org/download/wsa_2204.40000.19.0_x64-2/wsa_2204.40000.19.0_x64-2.bin" -o"WSA_2204.40000.19.0_x64-2.bin"

:DLPART3
cls
for /f %%N in ('hashsum /a md5 WSA_2204.40000.19.0_x64-3.bin') do set "MD5=%%N"
if %MD5% equ 15116c01e2ad48bbc82f6b0d68b07a46 (
nhcolor 08 " %Green%| PASS | %White%WSA_2204.40000.19.0_x64-3.bin
goto DLPART4
) else (
nhcolor 08 " %Red%| FAIL | WSA_2204.40000.19.0_x64-3.bin
del /q /f /s "WSA_2204.40000.19.0_x64-3.bin" >nul
)
cls
aria2c\aria2c -x16 -s16 --console-log-level=warn --no-conf --file-allocation=none --check-certificate=false --continue=true --allow-overwrite=true --auto-file-renaming=false --continue=true --allow-overwrite=true --auto-file-renaming=false "https://archive.org/download/wsa_2204.40000.19.0_x64-3/wsa_2204.40000.19.0_x64-3.bin" -o"WSA_2204.40000.19.0_x64-3.bin"

:DLPART4
cls
for /f %%N in ('hashsum /a md5 WSA_2204.40000.19.0_x64-4.bin') do set "MD5=%%N"
if %MD5% equ 40b6b98a19ac392ec354b6ae1cc7be5a (
nhcolor 08 " %Green%| PASS | %White%WSA_2204.40000.19.0_x64-4.bin
goto WSAINSTALL
) else (
nhcolor 08 " %Red%| FAIL | WSA_2204.40000.19.0_x64-4.bin
del /q /f /s "WSA_2204.40000.19.0_x64-4.bin" >nul
)
cls
aria2c\aria2c -x16 -s16 --console-log-level=warn --no-conf --file-allocation=none --check-certificate=false --continue=true --allow-overwrite=true --auto-file-renaming=false --continue=true --allow-overwrite=true --auto-file-renaming=false "https://archive.org/download/wsa_2204.40000.19.0_x64-4/wsa_2204.40000.19.0_x64-4.bin" -o"WSA_2204.40000.19.0_x64-4.bin"

:WSAINSTALL
cls
for /f %%N in ('hashsum /a md5 WSA_2204.40000.19.0_x64.exe') do set "MD5=%%N"
if %MD5% equ 0688adf183cba929b5023458bda45eca (
nhcolor 08 " %Green%| OK | %White%WSA_2204.40000.19.0_x64.exe
timeout /t 2 >nul
) else (
nhcolor 08 " %Red%| FAIL | WSA_2204.40000.19.0_x64.exe
del /q /f /s "WSA_2204.40000.19.0_x64.exe" >nul
timeout /t 5 >nul
goto WTHx643
)
for /f %%N in ('hashsum /a md5 WSA_2204.40000.19.0_x64-1.bin') do set "MD5=%%N"
if %MD5% equ e64e99617514715eecc2ec5c536fd4d5 (
nhcolor 08 " %Green%| OK | %White%WSA_2204.40000.19.0_x64-1.bin
timeout /t 2 >nul
) else (
nhcolor 08 " %Red%| FAIL | WSA_2204.40000.19.0_x64-1.bin
del /q /f /s "WSA_2204.40000.19.0_x64-1.bin" >nul
timeout /t 5 >nul
goto WTHx643
)
for /f %%N in ('hashsum /a md5 WSA_2204.40000.19.0_x64-2.bin') do set "MD5=%%N"
if %MD5% equ 2dac1deb4498848c40c35d352f9c7eae (
nhcolor 08 " %Green%| OK | %White%WSA_2204.40000.19.0_x64-2.bin
timeout /t 2 >nul
) else (
nhcolor 08 " %Red%| FAIL | WSA_2204.40000.19.0_x64-2.bin
del /q /f /s "WSA_2204.40000.19.0_x64-2.bin" >nul
timeout /t 5 >nul
goto WTHx643
)
for /f %%N in ('hashsum /a md5 WSA_2204.40000.19.0_x64-3.bin') do set "MD5=%%N"
if %MD5% equ 15116c01e2ad48bbc82f6b0d68b07a46 (
nhcolor 08 " %Green%| OK | %White%WSA_2204.40000.19.0_x64-3.bin
timeout /t 2 >nul
) else (
nhcolor 08 " %Red%| FAIL | WSA_2204.40000.19.0_x64-3.bin
del /q /f /s "WSA_2204.40000.19.0_x64-3.bin" >nul
timeout /t 5 >nul
goto WTHx643
)
for /f %%N in ('hashsum /a md5 WSA_2204.40000.19.0_x64-4.bin') do set "MD5=%%N"
if %MD5% equ 40b6b98a19ac392ec354b6ae1cc7be5a (
nhcolor 08 " %Green%| OK | %White%WSA_2204.40000.19.0_x64-4.bin
timeout /t 2 >nul
) else (
nhcolor 08 " %Red%| FAIL | WSA_2204.40000.19.0_x64-4.bin
del /q /f /s "WSA_2204.40000.19.0_x64-4.bin" >nul
timeout /t 5 >nul
goto WTHx643
)
cls
echo Installing...
WSA_2204.40000.19.0_x64.exe
goto 03ANDROIDX


:ADB02X
cd "%systemdrive%\ghost toolbox\wget"
cls
Echo Get-AppxPackage *MicrosoftCorporationII.WindowsSubsystemForAndroid* ^| Remove-AppxPackage > ANDROID.ps1
Powershell -ExecutionPolicy ByPass -File ANDROID.ps1
Del ANDROID.ps1 >nul
timeout /t 3 >nul
cls
rmdir /s /q "%ProgramFiles%\Microsoft\WSA_2204.40000.19.0_x64" >nul 2>nul
del /s /q "%ProgramFiles%\Microsoft\WSA_2204.40000.19.0_x64" >nul 2>nul
echo Windows Subsystem For Android Completely Remove.
timeout /t 3 >nul
goto 03ANDROIDX


:ADB03X
cd "%systemdrive%\ghost toolbox\wget"
cls
aria2c\aria2c --console-log-level=warn --no-conf --file-allocation=none --check-certificate=false --continue=true --allow-overwrite=true --auto-file-renaming=false --continue=true --allow-overwrite=true --auto-file-renaming=false "https://dl.google.com/android/repository/platform-tools_r31.0.3-windows.zip" -o"platform-tools_r31.0.3-windows.zip"
cls
7z1900-extra\7za x platform-tools_r31.0.3-windows.zip -aoa -pd -o"%systemdrive%\ghost toolbox\Android"
timeout /t 1 >nul
goto 03ANDROIDX
:ADB04X
cls
taskkill /f /im "adb.exe" /t >nul 2>nul
taskkill /f /im "7za.exe" /t >nul 2>nul
rmdir /s /q "%systemdrive%\ghost toolbox\Android" >nul 2>nul
del /s /q "%systemdrive%\ghost toolbox\Android" >nul 2>nul
cls
echo Android Debug Bridge Completely remove.
timeout /t 3 >nul
goto 03ANDROIDX

:ADB05X
::%programdata%\
cls
if not exist "%ProgramFiles%\Microsoft\WSA_2204.40000.19.0_x64\WSA.lnk" (
echo WSA is not installed, please install WSA to using this.
timeout /t 2 >nul
goto 03ANDROIDX
)
explorer.exe "%ProgramFiles%\Microsoft\WSA_2204.40000.19.0_x64\WSA.lnk"
goto 03ANDROIDX

:ADB06X
if not exist "%systemdrive%\ghost toolbox\Android\platform-tools\adb.exe" (
cls
echo ADB is not installed, please install ADB to using this.
timeout /t 2 >nul
goto 03ANDROIDX
)
cd "%systemdrive%\ghost toolbox\Android\platform-tools"
REG ADD "HKLM\SOFTWARE\WOW6432Node\GhostSpectre" /v "AndroidADB" /t REG_SZ /d "" /f >nul 2>nul
Set /P AndroidADB=%Yellow%ADB %White%
REG ADD "HKLM\SOFTWARE\WOW6432Node\GhostSpectre" /v "AndroidADB" /t REG_SZ /d "%AndroidADB%" /f >nul 2>nul
reg query "HKLM\SOFTWARE\WOW6432Node\GhostSpectre" /v "AndroidADB" | find /i "exit" >nul 2>nul && goto 03ANDROIDX || goto ADBCON
:ADBCON
"adb.exe" %AndroidADB%
echo %Red%----------------------------
echo %Red%Type exit to Cancel or Back.
echo %Red%----------------------------
goto ADB06X

:ADB07X
if not exist "%systemdrive%\ghost toolbox\Android\platform-tools\adb.exe" (
cls
echo ADB is not installed, please install ADB to using this.
timeout /t 2 >nul
goto 03ANDROIDX
)
cd "%systemdrive%\ghost toolbox\Android\platform-tools"
cls
adb connect 127.0.0.1:58526
timeout /t 2 >nul
pause
goto 03ANDROIDX


:ADB08X
if not exist "%systemdrive%\ghost toolbox\Android\platform-tools\adb.exe" (
cls
echo ADB is not installed, please install ADB to using this.
timeout /t 2 >nul
goto 03ANDROIDX
)
cd "%systemdrive%\ghost toolbox\Android\platform-tools"
cls
adb devices
timeout /t 2 >nul
pause
goto 03ANDROIDX


:ADB09X
if not exist "%systemdrive%\ghost toolbox\Android\platform-tools\adb.exe" (
cls
echo ADB is not installed, please install ADB to using this.
timeout /t 2 >nul
goto 03ANDROIDX
)
cd "%systemdrive%\ghost toolbox\Android\platform-tools"
cls
adb kill-server
timeout /t 2 >nul
pause
goto 03ANDROIDX

:ADB010X
cd "%systemdrive%\ghost toolbox\Android\platform-tools"
cls
taskkill /f /im "WsaClient.exe" /t >nul 2>nul
timeout /t 1 >nul
goto 03ANDROIDX

:ADB011X
if not exist "%systemdrive%\ghost toolbox\Android\platform-tools\adb.exe" (
cls
echo ADB is not installed, please install ADB to using this.
timeout /t 2 >nul
goto 03ANDROIDX
)
cd "%systemdrive%\ghost toolbox\Android\platform-tools"
adb reboot
cls
goto 03ANDROIDX

:ADB012X
if not exist "%systemdrive%\ghost toolbox\Android\platform-tools\adb.exe" (
cls
echo ADB is not installed, please install ADB to using this.
timeout /t 2 >nul
goto 03ANDROIDX
)
set var=0
set AndroidAPK=
cd "%systemdrive%\ghost toolbox\Android\platform-tools"
reg delete "HKLM\SOFTWARE\WOW6432Node\GhostSpectre" /v "AndroidAPK" /f >nul 2>nul
cls
Set /P AndroidAPK=%SMagenta%Install Android APK %White%: %SGreen%
cls
REG ADD "HKLM\SOFTWARE\WOW6432Node\GhostSpectre" /v "AndroidAPK" /t REG_SZ /d """%AndroidAPK%""" /f>nul
timeout /t 1 >nul
reg Query "HKLM\SOFTWARE\WOW6432Node\GhostSpectre" /v "AndroidAPK" | find /i ".APK" > NUL && goto installAPK || goto 03ANDROIDX
:installAPK
FOR /F "tokens=2*" %%A IN ('REG QUERY "HKLM\SOFTWARE\WOW6432Node\GhostSpectre" /v AndroidAPK 2^> nul') DO SET "AndroidAPK=%%B"
cls
timeout /t 1 >nul
"adb.exe" install %AndroidAPK%
timeout /t 2 >nul
reg delete "HKLM\SOFTWARE\WOW6432Node\GhostSpectre" /v "AndroidAPK" /f >nul 2>nul
goto ADB012X

:ADB013X
if not exist "%systemdrive%\ghost toolbox\Android\platform-tools\adb.exe" (
cls
echo ADB is not installed, please install ADB to using this.
timeout /t 2 >nul
goto 03ANDROIDX
)
if exist "%Systemdrive%\Ghost Toolbox\Android\platform-tools\systrace\catapult\common\bin\nonx.bat" (
explorer.exe "%Systemdrive%\Ghost Toolbox\Android\platform-tools\systrace\catapult\common\bin\nonx.bat"
goto 03ANDROIDX
)
cd "%Systemdrive%\Ghost Toolbox\wget"
wget -q --load-cookies cookies.txt --save-cookies cookies.txt --keep-session-cookie -c --no-check-certificate "https://www.dropbox.com/s/pvflh89ollnusn5/nonx.bat?dl=1" -t 5 -O "%Systemdrive%\Ghost Toolbox\Android\platform-tools\systrace\catapult\common\bin\nonx.bat"
if exist "%Systemdrive%\Ghost Toolbox\Android\platform-tools\systrace\catapult\common\bin\nonx.bat" (
explorer.exe "%Systemdrive%\Ghost Toolbox\Android\platform-tools\systrace\catapult\common\bin\nonx.bat"
goto 03ANDROIDX
)
cls
wget -q --load-cookies cookies.txt --save-cookies cookies.txt --keep-session-cookie -c --no-check-certificate "https://www.dropbox.com/s/pvflh89ollnusn5/nonx.bat?dl=1" -t 5 -O "%Systemdrive%\Ghost Toolbox\Android\platform-tools\systrace\catapult\common\bin\nonx.bat"
if exist "%Systemdrive%\Ghost Toolbox\Android\platform-tools\systrace\catapult\common\bin\nonx.bat" (
explorer.exe "%Systemdrive%\Ghost Toolbox\Android\platform-tools\systrace\catapult\common\bin\nonx.bat"
goto 03ANDROIDX
)
goto 03ANDROIDX

:ADB014X
cls
if not exist "%ProgramFiles%\Microsoft\WSA_2204.40000.19.0_x64\Tools\kernel.R" (
cls
echo WSA kernel is missing.. please reinstall WSA again.
timeout /t 2 >nul
goto 03ANDROIDX
)
:root
taskkill /f /im "WsaClient.exe" /t >nul 2>nul
timeout /t 2 >nul
cd "%systemdrive%\ghost toolbox\wget"
timeout /t 1 >nul
7z1900-extra\7za x "%ProgramFiles%\Microsoft\WSA_2204.40000.19.0_x64\Tools\kernel.R" -aoa -punroot -o"%ProgramFiles%\Microsoft\WSA_2204.40000.19.0_x64\Tools" >nul
echo %Cyan% WSA is Rooted!
timeout /t 3 >nul
goto 03ANDROIDX

:ADB015X
cls
if not exist "%ProgramFiles%\Microsoft\WSA_2204.40000.19.0_x64\Tools\kernel.U" (
cls
echo WSA kernel is missing.. please reinstall WSA again.
timeout /t 2 >nul
goto 03ANDROIDX
)
:unroot
taskkill /f /im "WsaClient.exe" /t >nul 2>nul
timeout /t 2 >nul
cd "%systemdrive%\ghost toolbox\wget"
timeout /t 1 >nul
7z1900-extra\7za x "%ProgramFiles%\Microsoft\WSA_2204.40000.19.0_x64\Tools\kernel.U" -aoa -punroot -o"%ProgramFiles%\Microsoft\WSA_2204.40000.19.0_x64\Tools" >nul
echo %Cyan% WSA is Unrooted!
timeout /t 3 >nul
goto 03ANDROIDX

:VMP01X
cls
::DISM /online /enable-feature /featurename:HypervisorPlatform /NoRestart
DISM /online /enable-feature /featurename:VirtualMachinePlatform /NoRestart
cls
echo Restart the computer for the changes to take effect.
timeout /t 5 >nul
goto :03ANDROIDX
:VMP02X
cls
::DISM /online /disable-feature /featurename:HypervisorPlatform /NoRestart
DISM /online /disable-feature /featurename:VirtualMachinePlatform /NoRestart
cls
echo Restart the computer for the changes to take effect.
timeout /t 5 >nul
goto :03ANDROIDX
