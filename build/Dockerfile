FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y libx11-6 libfreetype6 libxrender1 libfontconfig1 libxext6 xvfb wget curl

RUN wget https://www.segger.com/downloads/embedded-studio/EmbeddedStudio_ARM_Linux_x64 -O ses.tar.gz && tar -zxvf ses.tar.gz

RUN Xvfb :1 -screen 0 1024x768x16 &

RUN DISPLAY=:1 $(find arm_segger_* -name "install_segger*") --copy-files-to /ses

CMD ["/ses/bin/emBuild"]
