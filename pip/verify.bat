@echo off
chcp 65001 > nul
echo ========================================
echo  Python镜像源验证脚本
echo ========================================
echo.

REM 检查Python是否已安装
python --version > nul 2>&1
if %errorlevel% neq 0 (
  echo 错误：未找到Python，请确保已安装Python并添加到系统PATH
  pause
  exit /b 1
)
echo 正在验证pip镜像源配置...
echo ------------------------------

echo 检查pip配置:
python -m pip config list
if %errorlevel% neq 0 (
  echo 警告：无法获取pip配置
) else (
  echo.
  echo pip配置获取成功
)

echo.
echo 正在检查当前镜像源设置...
python -c "import pip; print('当前pip镜像源配置:'); from pip._internal.commands.configuration import Configuration; cfg = Configuration(isolation=False); cfg.load(); print('global.index-url:', cfg.get_value('global.index-url'))"

echo.
echo 正在测试网络连接...
ping mirrors.aliyun.com -n 2 > nul
echo 测试阿里云镜像源连接...
python -c "import urllib.request; urllib.request.urlopen('https://mirrors.aliyun.com/pypi/simple/') and print('阿里云镜像源连接成功')" 2>nul || echo 阿里云镜像源连接失败

echo.
echo 正在测试pip安装功能...
echo 检查pip版本信息：
python -m pip --version

echo.
echo 验证完成！
echo.
pause