@echo off
chcp 65001 > nul
REM ========================================
REM  一键更改镜像源工具集
REM  GitHub: https://github.com/canjisam/Lazymirrorswitcher
REM  Gitee: https://gitee.com/yin-sanmu/Lazymirrorswitcher
REM  如果对你有帮助，请给个 Star ⭐，你的每一次支持都是我持续更新的最大动力！
REM ========================================
echo ========================================
echo      一键更改镜像源工具集
echo ========================================
echo.
echo GitHub项目地址: https://github.com/canjisam/Lazymirrorswitcher
echo Gitee项目地址: https://gitee.com/yin-sanmu/Lazymirrorswitcher
echo 如果对你有帮助，请给个 Star ⭐，你的每一次支持都是我持续更新的最大动力！
echo.
echo 请选择要配置的镜像源：
echo.
echo 1. Python (pip)
echo 2. Node.js (npm)
echo 3. Docker
echo 4. 全部配置
echo.
echo ========================================

set /p choice="请输入选项 (1-4): "

if "%choice%"=="1" (
  echo.
  echo 启动Python镜像源配置...
  cd pip
  start setup_pip_mirror.bat
  cd ..
) else if "%choice%"=="2" (
  echo.
  echo 启动NPM镜像源配置...
  cd npm
  start setup_npm_mirror.bat
  cd ..
) else if "%choice%"=="3" (
  echo.
  echo 启动Docker镜像源配置...
  cd docker
  start setup_docker_mirror.bat
  cd ..
) else if "%choice%"=="4" (
  echo.
  echo 启动全部镜像源配置...
  cd pip
  start setup_pip_mirror.bat
  cd ..
  cd npm
  start setup_npm_mirror.bat
  cd ..
  cd docker
  start setup_docker_mirror.bat
  cd ..
) else (
  echo.
  echo 输入无效，请选择 1-4 之间的数字
  timeout /t 2
  goto start
)

echo.
echo 配置启动完成！
echo.
pause