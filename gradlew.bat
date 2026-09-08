@echo off

where gradle >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    gradle %*
    exit /b %ERRORLEVEL%
)

set APP_HOME=%~dp0
if exist "%APP_HOME%gradle\wrapper\gradle-wrapper.jar" (
    java -jar "%APP_HOME%gradle\wrapper\gradle-wrapper.jar" %*
    exit /b %ERRORLEVEL%
)

echo Gradle Wrapper jar not found and Gradle is not installed.
exit /b 1
