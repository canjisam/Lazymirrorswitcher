# Pip 镜像源配置说明

## 配置文件说明

`pip.ini` 是 Pip 的配置文件，其中 `index-url` 字段定义了包管理器的镜像源。

## 当前配置的镜像源

- `https://mirrors.aliyun.com/pypi/simple/` - 阿里云镜像源（当前使用）

## 可选的其他镜像源

如需切换到其他镜像源，请编辑 `pip.ini` 文件：

- `https://pypi.tuna.tsinghua.edu.cn/simple/` - 清华大学镜像源
- `https://pypi.mirrors.ustc.edu.cn/simple/` - 中科大镜像源
- `https://pypi.douban.com/simple/` - 豆瓣镜像源
- `https://mirrors.huaweicloud.com/repository/pypi/simple/` - 华为云镜像源

## 如何切换镜像源

1. 编辑 `pip.ini` 文件
2. 将当前使用的镜像源（index-url = ...）行注释掉（在行首添加#号）
3. 找到想要使用的镜像源，取消其注释（移除行首的#号）

例如，要切换到清华大学镜像源：
```
# index-url = https://mirrors.aliyun.com/pypi/simple/
index-url = https://pypi.tuna.tsinghua.edu.cn/simple/
```

## 注意事项

- 修改配置后，新的镜像源会立即生效
- `trusted-host` 字段列出了所有可能使用的镜像源域名，以避免SSL验证问题
- 可以使用 `pip config list` 命令验证当前使用的镜像源

---

## 项目地址

GitHub: https://github.com/canjisam/Lazymirrorswitcher

Gitee: https://gitee.com/yin-sanmu/Lazymirrorswitcher

如果这个项目对您有帮助，请给一个Star ⭐，谢谢支持！