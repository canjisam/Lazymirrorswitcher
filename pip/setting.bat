@echo off
chcp 65001 > nul
REM ========================================
REM  Python镜像源设置脚本
REM  GitHub: https://github.com/canjisam/Lazymirrorswitcher
REM  Gitee: https://gitee.com/yin-sanmu/Lazymirrorswitcher
REM  如果对你有帮助，请给个 Star ⭐，你的每一次支持都是我持续更新的最大动力！
REM ========================================
echo ========================================
echo  Python镜像源设置脚本
echo ========================================
echo.
echo GitHub: https://github.com/canjisam/Lazymirrorswitcher
echo Gitee: https://gitee.com/yin-sanmu/Lazymirrorswitcher
echo 如果对你有帮助，请给个 Star ⭐，你的每一次支持都是我持续更新的最大动力！
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