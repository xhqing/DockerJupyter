FROM jupyter/datascience-notebook

RUN pip install -i https://mirrors.aliyun.com/pypi/simple pipenv
ENV PATH=$PATH:/home/jovyan/.local/bin

USER root
RUN conda config --set auto_activate_base false
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

RUN apt update -y && apt install -y net-tools
RUN apt install -y vim && apt install -y htop

ENV TIME_ZONE=Asia/Shanghai
RUN echo "${TIME_ZONE}" > /etc/timezone && ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime
RUN find . -name "*.pyc" -delete

CMD ["jupyter", "lab", "--allow-root"]
