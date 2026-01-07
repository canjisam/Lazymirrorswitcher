@echo off
chcp 65001 > nul
REM ========================================
REM  一键更改Docker镜像源启动器
REM  GitHub: https://github.com/canjisam/Lazymirrorswitcher
REM  Gitee: https://gitee.com/yin-sanmu/Lazymirrorswitcher
REM  如果对你有帮助，请给个 Star ⭐，你的每一次支持都是我持续更新的最大动力！
REM ========================================
echo ========================================
echo  一键更改Docker镜像源启动器
echo ========================================
echo.
echo GitHub项目地址: https://github.com/canjisam/Lazymirrorswitcher
echo Gitee项目地址: https://gitee.com/yin-sanmu/Lazymirrorswitcher
echo 如果对你有帮助，请给个 Star ⭐，你的每一次支持都是我持续更新的最大动力！
echo.

REM 检查setting.bat是否存在
echo 正在启动配置程序...
echo.
if exist "setting.bat" (
  start setting.bat
  echo setting.bat启动成功！请按提示完成配置。
) else (
  echo 错误：找不到setting.bat文件
  pause
  exit /b 1
)
echo.

REM 检查verify.bat是否存在
echo 正在启动验证程序...
echo.
if exist "verify.bat" (
  start verify.bat
  echo verify.bat启动成功！请按提示完成验证。
) else (
  echo 错误：找不到verify.bat文件
  pause
  exit /b 1
)
echo.
pause