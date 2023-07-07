# DockerJupyter

## Jupyter Docker Image Building

Building Jupyter Docker Image Based on `Dockerfile`.
```sh
docker build --no-cache -t IMAGE_NAME .
docker run -u root -d -p SERVER_PORT:8888 -v SERVER_DIR_ABSPATH:/home/jovyan/work --name="CONTAINER_NAME" IMAGE_NAME
```

## 页面访问
可通过此链接来访问JupyterLab: `http://SERVER_IP:SERVER_PORT/lab/tree/work`, 如果无法访问, 可能是没有`SERVER_PORT`的权限.

首次登入需要输入密码或Token, Token可以在启动日志里面找到, 查看日志命令如下: 
```sh
docker logs CONTAINER_NAME
```

## License
MIT

