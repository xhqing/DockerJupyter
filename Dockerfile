FROM docker.io/python:3.9.12

RUN pip install --user --no-cache-dir --trusted-host mirrors.aliyun.com -i https://mirrors.aliyun.com/pypi/simple jupyter lab
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

RUN apt update -y && apt install -y net-tools
RUN apt install -y vim && apt install -y htop

RUN mkdir /data

ENV TIME_ZONE=Asia/Shanghai
RUN echo "${TIME_ZONE}" > /etc/timezone && ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime
RUN find . -name "*.pyc" -delete

CMD ["jupyter", "lab", "--allow-root"]
