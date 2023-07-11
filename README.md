# DockerJupyterLab

## JupyterLab Docker镜像构建及容器部署
```sh
# Building JupyterLab Docker Image Based on `Dockerfile`.
docker build --no-cache -t IMAGE_NAME .

# Container Deployment
docker run -u root -d -p SERVER_PORT:8888 -v SERVER_DIR_ABSPATH:/home/jovyan/work --name="CONTAINER_NAME" IMAGE_NAME
```

## 页面访问
JupyterLab容器部署好以后, 可通过此链接来访问JupyterLab: `http://SERVER_IP:SERVER_PORT/lab/tree/work`, 如果无法访问, 可能是没有`SERVER_PORT`的权限.

首次浏览器登入JupyterLab需要输入密码或Token, Token可以在启动日志里面找到, 查看启动日志的命令如下: 
```sh
docker logs CONTAINER_NAME
```

## ED25519 SSH KEYS
如需在此JupyterLab容器里面使用git工具拉取或提交代码, 需要配置ED25519 SSH keys, 不建议使用RSA keys(尝试多次没有成功, 不知原因), 生成ED25519 SSH keys的命令如下:
```sh
ssh-keygen -t ed25519 -C "<comment>"
```
The -C flag, with a quoted comment such as an email address, is an optional way to label your SSH keys.
