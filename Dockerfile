FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:webupd8team/java && \
    apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    wget \
    libssl-dev \
    unzip \
    vim \
    nano && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true\
    | debconf-set-selections && \
    apt-get install -y oracle-java8-installer \
    && rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/oracle-jdk8-installer

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN wget https://services.gradle.org/distributions/gradle-4.2-bin.zip && \
    mkdir /opt/gradle && \
    unzip -d /opt/gradle gradle-4.2-bin.zip && \
    export PATH=$PATH:/opt/gradle/gradle-4.2/bin && \
    gradle -v && \
    rm gradle-4.2-bin.zip

ENV PATH=$PATH:/opt/gradle/gradle-4.2/bin

RUN git clone https://github.com/eProsima/Fast-RTPS && \
    mkdir Fast-RTPS/build && cd Fast-RTPS/build \
    && cmake -DTHIRDPARTY=ON .. -DBUILD_JAVA=ON \
    -DPERFORMANCE_TESTS=ON -DSECURITY=ON \
    && make \
    && make install

