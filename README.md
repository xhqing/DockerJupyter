# JupyterLab-Docker

```sh
docker build --no-cache -t jupyterlab .
docker run -it -p 9999:8888 -v /data:/data --name="jupyterlab" jupyterlab &
```
