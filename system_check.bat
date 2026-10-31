@echo off
REM ============================================
REM System Check Automation Script
REM ============================================

echo ============================================
echo        WELCOME TO SYSTEM CHECK SCRIPT
echo ============================================
echo.

echo Current User:
whoami
echo.

echo Computer Name:
hostname
echo.

echo Current Date and Time:
date /t
time /t
echo.

echo Basic IP / Network Information:
ipconfig
echo.

if not exist "Daily_Backup" (
    mkdir "Daily_Backup"
    echo Daily_Backup folder created successfully.
) else (
    echo Daily_Backup folder already exists.
)
echo.

if exist "student_info.txt" (
    copy "student_info.txt" "Daily_Backup\"
    echo student_info.txt copied to Daily_Backup successfully.
) else (
    echo ERROR: student_info.txt not found!
)
echo.

echo ============================================
echo        SYSTEM CHECK COMPLETED SUCCESSFULLY
echo ============================================
pause