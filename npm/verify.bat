@echo off
chcp 65001 > nul
REM ========================================
REM  NPM镜像源验证脚本
REM  GitHub: https://github.com/canjisam/Lazymirrorswitcher
REM  Gitee: https://gitee.com/yin-sanmu/Lazymirrorswitcher
REM  如果对你有帮助，请给个 Star ⭐，你的每一次支持都是我持续更新的最大动力！
REM ========================================
echo ========================================
echo  NPM镜像源验证脚本
echo ========================================
echo.
echo GitHub: https://github.com/canjisam/Lazymirrorswitcher
echo Gitee: https://gitee.com/yin-sanmu/Lazymirrorswitcher
echo 如果对你有帮助，请给个 Star ⭐，你的每一次支持都是我持续更新的最大动力！
echo.

REM 检查Node.js和npm是否已安装
node --version > nul 2>&1
if %errorlevel% neq 0 (
  echo 错误：未找到Node.js，请确保已安装Node.js并添加到系统PATH
  pause
  exit /b 1
)

npm --version > nul 2>&1
if %errorlevel% neq 0 (
  echo 错误：未找到npm，请确保已安装npm并添加到系统PATH
  pause
  exit /b 1
)

echo 正在验证npm镜像源配置...
echo ------------------------------

echo 检查npm配置:
npm config list

echo.
echo 正在检查当前镜像源设置...
npm config get registry

echo.
echo 正在测试网络连接...
ping registry.npmmirror.com -n 2 > nul
echo 测试阿里云镜像源连接...
curl -s -o nul http://registry.npmmirror.com/ || echo 阿里云镜像源连接测试完成

echo.
echo 正在测试npm功能...
echo 检查npm版本信息：
npm --version

echo.
echo 验证完成！
echo.
pause