@echo off

:: 引数があるか確認
if "%~1"=="" (
    echo Usage: make-post.bat ^<commit-message^>
    exit /b 1
)

:: リポジトリへの操作
git add .
git commit -m %~1
git status