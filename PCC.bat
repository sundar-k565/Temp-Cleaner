@echo off
title PC Cleaner Utility
color 0A
setlocal

:: Set log file (optional)
set "logFile=%~dp0cleaner_log.txt"

echo ===============================
echo        PC Cleaner Tool        
echo ===============================
echo Starting cleanup process...
echo Log file: %logFile%
echo.

:: Log start time
echo Cleaning started at %date% %time% > "%logFile%"

:: Flush DNS cache
echo [*] Flushing DNS cache...
ipconfig /flushdns >> "%logFile%" 2>&1

:: Clean common junk files
echo [*] Deleting junk files...

:: Create temp folder in case it doesn't exist
if not exist "%windir%\temp" md "%windir%\temp"

(
    del /f /s /q %systemdrive%\*.tmp
    del /f /s /q %systemdrive%\*._mp
    del /f /s /q %systemdrive%\*.log
    del /f /s /q %systemdrive%\*.gid
    del /f /s /q %systemdrive%\*.chk
    del /f /s /q %systemdrive%\*.old
    del /f /s /q %windir%\*.bak
    del /f /s /q %windir%\prefetch\*.*
    rd /s /q %windir%\temp & md %windir%\temp
    del /f /q "%userprofile%\Cookies\*.*"
    del /f /q "%userprofile%\Recent\*.*"
    del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
    del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
    del /f /s /q "%userprofile%\Recent\*.*"
) >> "%logFile%" 2>&1

:: Disk space check
echo [*] Checking disk space...
wmic logicaldisk get size,freespace,caption >> "%logFile%" 2>&1

echo.
echo Cleanup complete!
echo Log saved to: %logFile%
echo ===============================
pause
endlocal
