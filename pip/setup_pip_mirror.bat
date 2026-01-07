@echo off
chcp 65001 > nul
REM ========================================
REM  一键更改Python镜像源启动器
REM  GitHub: https://github.com/canjisam/Lazymirrorswitcher
REM  如果对您有帮助，请给一个Star ⭐ 谢谢支持！
REM ========================================
echo ========================================
echo  一键更改Python镜像源启动器
echo ========================================
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