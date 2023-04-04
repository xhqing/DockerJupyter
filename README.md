# JupyterLab-Docker

```sh
docker build --no-cache -t jupyterlab .
docker run -u root -it -p 9999:8888 -v /data:/home/jovyan/work --name="jupyterlab" jupyterlab &
```
