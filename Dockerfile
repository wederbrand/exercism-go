# exercism go
#
# VERSION               1.0

FROM wederbrand/exercism-base
MAINTAINER Andreas Wederbrand andreas@wederbrand.se

# install go
WORKDIR /usr/local/
RUN wget -qO- https://storage.googleapis.com/golang/go1.5.1.linux-amd64.tar.gz | tar -zx
ENV PATH $PATH:/usr/local/go/bin

WORKDIR /root/exercism/go
RUN echo 'exercism configure --key=$KEY' >> /root/.bashrc
RUN echo 'exercism restore' >> /root/.bashrc
RUN echo 'exercism fetch go' >> /root/.bashrc
USER root
ENTRYPOINT ["bash"]