# 版本信息
#java：latest 为centos官方java运行环境镜像，600多M ,可以提前pull到主机本地
FROM java:latest
MAINTAINER me
#实际上可以配置成变量
ARG JAR_FILE
COPY target /usr/local/jar/
RUN mv /usr/local/jar/cicd-demo-1.0.jar  /usr/local/jar/app.jar
#开启内部服务端口 cicd-demo 项目端口
EXPOSE 8189
CMD ["java","-jar","/usr/local/jar/app.jar"]
