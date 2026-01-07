@echo off
chcp 65001 > nul
REM ========================================
REM  Docker镜像源设置脚本
REM  GitHub: https://github.com/canjisam/Lazymirrorswitcher
REM  Gitee: https://gitee.com/yin-sanmu/Lazymirrorswitcher
REM  如果对你有帮助，请给个 Star ⭐，你的每一次支持都是我持续更新的最大动力！
REM ========================================
echo ========================================
echo  Docker镜像源设置脚本
echo ========================================
echo.
echo GitHub: https://github.com/canjisam/Lazymirrorswitcher
echo Gitee: https://gitee.com/yin-sanmu/Lazymirrorswitcher
echo 如果对你有帮助，请给个 Star ⭐，你的每一次支持都是我持续更新的最大动力！
echo.

REM 检查daemon.json是否存在
if not exist "daemon.json" (
  echo 错误：找不到daemon.json配置文件
  pause
  exit /b 1
)

REM 检查Docker服务是否正在运行
docker version > nul 2>&1
if %errorlevel% neq 0 (
  echo 警告：Docker可能未安装或未启动
  echo 请确保Docker Desktop已安装并正在运行
) else (
  echo 检测到Docker正在运行
)

REM 创建或修改Docker配置文件
set DOCKER_CONFIG_PATH=%USERPROFILE%\.docker
if not exist "%DOCKER_CONFIG_PATH%" (
  mkdir "%DOCKER_CONFIG_PATH%"
  echo 创建Docker配置目录: %DOCKER_CONFIG_PATH%
)

copy "daemon.json" "%DOCKER_CONFIG_PATH%\daemon.json" > nul 2>&1

if %errorlevel% == 0 (
  echo Docker配置文件已成功更新
  echo.
  echo 请注意：需要重启Docker Desktop才能使配置生效
) else (
  echo 警告：复制配置文件时出现问题
)

echo.
echo 镜像源设置完成！
echo.
pause