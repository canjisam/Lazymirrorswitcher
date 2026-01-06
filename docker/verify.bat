@echo off
chcp 65001 > nul
echo ========================================
echo  Docker镜像源验证脚本
echo ========================================
echo.

REM 检查Docker是否已安装
docker --version > nul 2>&1
if %errorlevel% neq 0 (
  echo 错误：未找到Docker，请确保已安装Docker Desktop并添加到系统PATH
  pause
  exit /b 1
)

echo 正在验证Docker镜像源配置...
echo ------------------------------

echo 检查Docker版本信息:
docker --version

echo.
echo 检查Docker守护进程配置:
docker info

echo.
echo 正在检查当前镜像源设置...
if exist "%USERPROFILE%\.docker\daemon.json" (
  echo 当前Docker配置文件内容:
  type "%USERPROFILE%\.docker\daemon.json"
) else (
  echo 未找到Docker配置文件
)

echo.
echo 正在测试Docker Hub连接...
docker search hello-world > nul 2>&1
if %errorlevel% == 0 (
  echo Docker搜索功能正常
) else (
  echo Docker搜索功能可能存在问题
)

echo.
echo 正在测试镜像拉取功能...
docker pull hello-world > nul 2>&1
if %errorlevel% == 0 (
  echo Docker镜像拉取功能正常
  docker rmi hello-world > nul 2>&1
) else (
  echo Docker镜像拉取可能存在问题（可能是网络连接问题）
)

echo.
echo 验证完成！
echo.
pause