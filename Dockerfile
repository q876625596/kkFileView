FROM keking/kkfileview-jdk:latest
MAINTAINER chenjh "842761733@qq.com"
ADD server/target/kkFileView.tar.gz /opt/
ENV KKFILEVIEW_BIN_FOLDER /opt/kkFileView/bin
ENTRYPOINT ["java","-Dfile.encoding=UTF-8","-Dspring.config.location=/opt/kkFileView/config/application.properties","-jar","/opt/kkFileView/bin/kkFileView.jar"]
