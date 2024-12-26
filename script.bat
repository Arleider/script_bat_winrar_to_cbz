:: Define path
@echo off
SET "path=%~dp0"

for /d %%X in ("%path%\*") do (
    "C:\Program Files\WinRAR\WinRAR.exe" a -afzip -ep1 -r "%%~nX.zip" "%%X\"
    ren "%%~nX.zip" "%%~nX.cbz"
    rmdir /s /q "%%X\"
)