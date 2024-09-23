@echo off

:: 引数があるか確認
if "%~1"=="" (
    echo Usage: make-post.bat ^<post-title^>
    exit /b 1
)

:: 新しいポストを作成
hugo new post/%~1/index.md

:: Hugo サーバーを起動
hugo server -D
