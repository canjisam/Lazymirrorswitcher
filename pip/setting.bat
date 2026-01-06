@echo off
chcp 65001 > nul
echo ========================================
echo  Python镜像源设置脚本
echo ========================================
echo.
echo 正在设置pip镜像源...
echo ------------------------------

REM 检查pip.ini是否存在
if not exist "pip.ini" (
  echo 错误：找不到pip.ini配置文件
  pause
  exit /b 1
)

REM 创建或修改pip配置文件
if not exist "%APPDATA%\pip" mkdir "%APPDATA%\pip" > nul 2>&1
copy "pip.ini" "%APPDATA%\pip\pip.ini" > nul 2>&1

if %errorlevel% == 0 (
  echo pip配置文件已成功更新
) else (
  echo 警告：复制配置文件时出现问题
)

echo.
echo 镜像源设置完成！
echo.
pause