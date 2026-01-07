# NPM 镜像源配置说明

## 配置文件说明

`npmrc` 是 NPM 的配置文件，其中 `registry` 字段定义了包管理器的镜像源。

## 当前配置的镜像源

- `https://registry.npmmirror.com/` - 阿里云镜像源（当前使用）

## 可选的其他镜像源

如需切换到其他镜像源，请编辑 `npmrc` 文件：

- `https://registry.npm.taobao.org/` - 淘宝镜像源
- `https://mirrors.huaweicloud.com/repository/npm/` - 华为云镜像源
- `https://mirrors.cloud.tencent.com/npm/` - 腾讯云镜像源

## 如何切换镜像源

1. 编辑 `npmrc` 文件
2. 将当前使用的镜像源（registry=...）行注释掉（在行首添加#）
3. 找到想要使用的镜像源，取消其注释（移除行首的#号）

例如，要切换到淘宝镜像源：
```
# registry=https://registry.npmmirror.com/
registry=https://registry.npm.taobao.org/
```

## 注意事项

- 修改配置后，新的镜像源会立即生效
- 可以使用 `npm config get registry` 命令验证当前使用的镜像源

---

## 项目地址

GitHub: https://github.com/canjisam/Lazymirrorswitcher

Gitee: https://gitee.com/yin-sanmu/Lazymirrorswitcher

如果这个项目对您有帮助，请给一个Star ⭐，谢谢支持！