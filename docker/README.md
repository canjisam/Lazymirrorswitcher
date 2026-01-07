# Docker 镜像源配置说明

## 配置文件说明

`daemon.json` 是 Docker 的配置文件，其中 `registry-mirrors` 字段定义了镜像源列表。

## 当前配置的镜像源

- `https://docker.1ms.run` - DockerProxy镜像源（当前使用）
- `https://mirror.ccs.tencentyun.com` - 腾讯云镜像源
- `https://mirrors.aliyun.com` - 阿里云镜像源
- `https://docker.mirrors.ustc.edu.cn` - 中科大镜像源
- `https://hub-mirror.c.163.com` - 网易镜像源

## 如何切换镜像源

如需使用其他镜像源，可以修改 `daemon.json` 文件中 `registry-mirrors` 数组的顺序，
将想要使用的镜像源 URL 放在数组的第一个位置。

## 注意事项

- 修改配置后需要重启 Docker Desktop 才能生效
- 配置文件中的所有镜像源都会被使用，Docker 会自动选择响应最快的源

---

## 项目地址

GitHub: https://github.com/canjisam/Lazymirrorswitcher

Gitee: https://gitee.com/yin-sanmu/Lazymirrorswitcher

如果这个项目对您有帮助，请给一个Star ⭐，谢谢支持！