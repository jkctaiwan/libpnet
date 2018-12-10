@ECHO off

ECHO Get Script Directory
SET _ROOT=%~dp0

ECHO Activate VS Build Env
CALL "C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\VC\Auxiliary\Build\vcvarsall.bat" amd64

ECHO In case VS Activate Script Bring us to the wrong Directory
CD "%_ROOT%"

ECHO Set Lib
SET LIB=C:\Users\chenkua\OneDrive - MKS Instruments, Inc\pdoparser\WpdPack\Lib\x64;%LIB%

REM ECHO Check
REM cargo check --verbose

ECHO Debug Build
cargo build --verbose