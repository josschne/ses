FROM ubuntu:18.04

RUN apt-get update && \
	apt-get install -y libx11-6 libfreetype6 libxrender1 libfontconfig1 libxext6 xvfb curl unzip python-pip git && \
	pip install nrfutil

RUN Xvfb :1 -screen 0 1024x768x16 &

RUN curl https://www.nordicsemi.com/eng/nordic/download_resource/58852/29/7290792/94917 -o nrftools.tar && \
	tar -xvf nrftools.tar && \
	rm nrftools.tar
ENV PATH="/mergehex:/nrfjprog:$PATH"


RUN curl https://www.segger.com/downloads/embedded-studio/EmbeddedStudio_ARM_Linux_x64 -o ses.tar.gz && \
	tar -zxvf ses.tar.gz && \
	DISPLAY=:1 $(find arm_segger_* -name "install_segger*") --copy-files-to /ses && \
	rm ses.tar.gz && \
	rm -rf arm_segger_embedded_studio_*

RUN curl https://www.nordicsemi.com/eng/nordic/download_resource/59012/72/29414235/116085 -o nRF5_SDK_15.0.0_a53641a.zip && unzip nRF5_SDK_15.0.0_a53641a.zip && rm nRF5_SDK_15.0.0_a53641a.zip

CMD ["/ses/bin/emBuild"]
