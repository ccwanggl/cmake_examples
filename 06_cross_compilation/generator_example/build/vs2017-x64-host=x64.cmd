@echo off

set BUILD_DIR=vs2017-x64-host=x64
if not exist %BUILD_DIR% md %BUILD_DIR%
cd %BUILD_DIR%

cmake ../.. -G "Visual Studio 15 2017" -a x64 -T host=x64

@REM build
cmake --build . --config Debug
cmake --build . --config Release

@REM install
@REM --prefix xxx is optional
@REM cmake --install . --config Debug --prefix d:/lib/xxx
@REM cmake --install . --config Release --prefix d:/lib/xxx

cd ..

pause