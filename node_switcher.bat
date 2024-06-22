@echo off
setlocal

REM Set the folder where different Node.js versions are stored
set "nodeVersionsFolder=C:\path\to\node\versions"

REM List available Node.js versions
echo Available Node.js versions:
for /d %%d in ("%nodeVersionsFolder%\*") do (
    echo %%~nxd
)

REM Prompt the user to select a Node.js version
set /p nodeVersion="Enter the Node.js version you want to use: "

REM Check if the selected version exists
if not exist "%nodeVersionsFolder%\%nodeVersion%" (
    echo The specified Node.js version does not exist.
    goto end
)

REM Set the selected Node.js version to the PATH
set "nodePath=%nodeVersionsFolder%\%nodeVersion%\bin"
set "PATH=%nodePath%;%PATH%"

REM Verify the change
echo Switched to Node.js version:
node -v

:end
endlocal
