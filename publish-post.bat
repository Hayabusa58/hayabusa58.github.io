@echo off


:: 引数があるか確認
if "%~1"=="" (
    echo Usage: make-post.bat ^<commit-message^>
    exit /b 1
)

:: 静的ファイルを生成
hugo

:: リポジトリへの操作
git add .
git commit -m %~1
git status