@echo off
chcp 65001 > nul
echo ========================================
echo  NPM镜像源设置脚本
echo ========================================
echo.

REM 检查npmrc是否存在
if not exist "npmrc" (
  echo 错误：找不到npmrc配置文件
  pause
  exit /b 1
)

REM 创建或修改npm配置文件
if not exist "%USERPROFILE%\.npmrc" (
  echo 首次配置NPM镜像源...
) else (
  echo 检测到已有NPM配置，即将覆盖...
)

copy "npmrc" "%USERPROFILE%\.npmrc" > nul 2>&1

if %errorlevel% == 0 (
  echo NPM配置文件已成功更新
) else (
  echo 警告：复制配置文件时出现问题
)

echo.
echo 镜像源设置完成！
echo.
pause