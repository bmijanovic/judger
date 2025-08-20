@echo off

set "targetDirectory=.\dr-device"
cd /d "%targetDirectory%"

@ del /q /f facts.n3
@".\CLIPSDOS\CLIPSDOS.exe" -f2 .\start.clp