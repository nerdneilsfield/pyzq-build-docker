From ubuntu:16.04
MAINTAINER  Deng Qi <dengqi935@gmail.com>

# RUN apt-get update && \
#     apt-get install -y  \
#     bc \
#     libtool-bin \
#     gperf \
#     bison  \
#     flex   \
#     texi2html \
#     texinfo  \
#     help2man  \
#     gawk      \
#     libtool    \
#     wget \
#     build-essential \
#     automake \
#     libncurses5-dev \
#     libz-dev  \
#     libglib2.0-dev \
#     device-tree-compiler \
#     qemu-user-static \
#     binfmt-support \
#     multistrap \
#     git \
#     lib32z1 \
#     lib32ncurses5 \
#     lib32bz2-1.0 \
#     lib32stdc++6 \
#     libgnutls-dev \
#     libssl-dev \
#     kpartx \
#     nfs-common \
#     zerofree  \
#     u-boot-tools &&\
#     rm -rf /var/cache/apt/archives &&\
#     mkdir /tmp/tools && cd /tmp/tools && \
#     wget http://crosstool-ng.org/download/crosstool-ng/crosstool-ng-1.22.0.tar.bz2 && \
#     tar -xf crosstool-ng-1.22.0.tar.bz2 && \
#     cd crosstool-ng/ && ./configure --prefix=/opt/crosstool-ng &&\
#     make -j 8 && make install && \
#     cd .. && \

COPY ./setup.sh /tmp/setup.sh
RUN cd /temp/ && sh setup.sh && rm -rf /var/cache/apt/archives
