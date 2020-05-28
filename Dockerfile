FROM nvidia/cuda:10.2-runtime-ubuntu18.04
MAINTAINER oskupohja@hotmail.com
RUN apt-get update && apt-get install -y --no-install-recommends \
libcudnn7=7.6.5.32-1+cuda10.2 \
libcudnn7-dev=7.6.5.32-1+cuda10.2 \
clang \
libpython-dev \
libblocksruntime-dev \
wget

RUN wget -nv https://storage.googleapis.com/swift-tensorflow-artifacts/releases/v0.9/rc1/swift-tensorflow-RELEASE-0.9-ubuntu18.04.tar.gz
RUN tar xzf swift-tensorflow-RELEASE-0.9-ubuntu18.04.tar.gz
ENV PATH=$(pwd)/usr/bin:"${PATH}"