@echo off
cls
set obj_folder=%~dp0obj
set bin_folder=%~dp0
where cl >NUL 2>&1 1>NUL 
if not %errorlevel% equ 0 (
    color 04
    cls
    title environment error
    echo please run %~nx0 in develop prompt environment
    pause & color & title=%comspec%
    goto :EOF
)
:compile
echo compiling the downloader
if not exist %obj_folder% mkdir %obj_folder%
if not exist %bin_folder% mkdir %bin_folder%
if not exist src/getpage.c (
    cls
    color 03
    title file location error
    echo please put %~nx0 at the project root folder
    pause & color & title=%comspec%
    goto :EOF
)
taskkill /f /im getpage.exe 2>NUL >NUL
cl /nologo /W2 /Fo%obj_folder%\getpage.obj /Fe%bin_folder%getpage.exe src\getpage.c
if %errorlevel% equ 0 (
    rem cls
    color 02
    title success
    pause & color & title=%comspec%
) else (
    color 04
    title compile error
    echo bad news & echo.
    pause & color & title=%comspec%
)

