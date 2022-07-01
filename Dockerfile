FROM ubuntu:18.04

MAINTAINER chuanchiu <sss85921@gmail.com>

# install dependencies for compiling hadoop
RUN apt-get update && \
    apt-get install -y wget \
                       openjdk-8-jdk \
                       libprotobuf-dev \
                       protobuf-compiler \
                       maven \
                       cmake \
                       build-essential \
                       pkg-config \
                       libssl-dev \
                       zlib1g-dev \
                       llvm \
                       automake \
                       autoconf \
                       make

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/

COPY compile.sh /root/compile.sh

RUN chmod +x /root/compile.sh
