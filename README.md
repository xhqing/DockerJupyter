# DockerJupyter

## Jupyter Docker Image Building

Building Jupyter Docker Image Based on `Dockerfile`.
```sh
docker build --no-cache -t IMAGE_NAME .
docker run -u root -d -p HOST_PORT:8888 -v HOST_DIR_ABSPATH:/home/jovyan/work --name="CONTAINER_NAME" IMAGE_NAME
```
Note: Token can be found in starting logs. See logs simple as follows:
```sh
docker logs CONTAINER_NAME
```


## License

MIT

