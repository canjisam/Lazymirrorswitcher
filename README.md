# 一键更改镜像源工具集

一个简单易用的工具集，可以帮助您快速更改Python(pip)、Node.js(npm)和Docker的镜像源，提高包下载速度。

## 项目地址

GitHub: https://github.com/canjisam/Lazymirrorswitcher

Gitee: https://gitee.com/yin-sanmu/Lazymirrorswitcher

如果这个项目对您有帮助，请给一个Star ⭐，谢谢支持！



## 功能特性

- **一键配置**：自动配置pip、npm或Docker的镜像源
- **多镜像源支持**：提供多个国内镜像源选项
- **智能验证**：自动验证配置是否生效
- **中文界面**：完全中文提示，易于使用
- **安全可靠**：本地运行，无需联网

## 支持的镜像源

### Python (pip)
- 阿里云镜像源（默认）
- 清华大学镜像源
- 中科大镜像源
- 豆瓣镜像源
- 华为云镜像源

### Node.js (npm)
- 阿里云镜像源（默认）
- 淘宝镜像源
- 华为云镜像源
- 腾讯云镜像源

### Docker
- DockerProxy镜像源（默认）
- 腾讯云镜像源
- 阿里云镜像源
- 中科大镜像源
- 网易镜像源

## 使用方法

### 方法一：使用主控制台
1. 双击运行 `main_setup.bat`
2. 根据提示选择要配置的镜像源类型
3. 按提示完成配置和验证

### 方法二：单独配置
- **pip镜像源**：运行 `pip\setup_pip_mirror.bat`
- **npm镜像源**：运行 `npm\setup_npm_mirror.bat`
- **Docker镜像源**：运行 `docker\setup_docker_mirror.bat`

## 目录结构

```
懒人一键更改python镜像源(阿里云源)/
├── main_setup.bat          # 主控制台
├── README.md               # 项目说明文档
├── CHANGELOG.md            # 更新日志
├── LICENSE                 # 许可证
├── .gitignore              # Git忽略文件配置
├── pip/                    # pip镜像源配置
│   ├── pip.ini             # pip配置文件
│   ├── README.md           # pip配置说明
│   ├── setting.bat         # 设置脚本
│   ├── verify.bat          # 验证脚本
│   └── setup_pip_mirror.bat # 主启动脚本
├── npm/                    # npm镜像源配置
│   ├── npmrc               # npm配置文件
│   ├── README.md           # npm配置说明
│   ├── setting.bat         # 设置脚本
│   ├── verify.bat          # 验证脚本
│   └── setup_npm_mirror.bat # 主启动脚本
└── docker/                 # Docker镜像源配置
    ├── daemon.json         # Docker配置文件
    ├── README.md           # Docker配置说明
    ├── setting.bat         # 设置脚本
    ├── verify.bat          # 验证脚本
    └── setup_docker_mirror.bat # 主启动脚本
```

## 注意事项

1. 运行脚本需要管理员权限（特别是在修改系统级配置时）
2. Docker配置修改后需要重启Docker Desktop才能生效
3. 请确保已安装相应的工具（Python、Node.js、Docker）
4. 所有配置文件都包含详细的中文注释

## 常见问题

### Q: 配置后没有生效怎么办？
A: 请尝试重启命令行窗口或重新打开项目文件夹，某些工具需要重新加载配置。

### Q: Docker配置后镜像拉取仍然很慢？
A: 请确保Docker Desktop已完全重启，新配置才会生效。

## 许可证

本项目仅供学习和参考使用。

---

## GitHub项目地址

GitHub: https://github.com/canjisam/Lazymirrorswitcher

Gitee: https://gitee.com/yin-sanmu/Lazymirrorswitcher

如果您觉得这个项目有用，请给一个Star ⭐，谢谢支持！

