FROM centos:7.4.1708
LABEL maintainer="kazusato"
ENV PANDOC_VERSION=2.1.3
ENV PANDOC_FILE=pandoc-${PANDOC_VERSION}-linux.tar.gz
RUN cd /tmp && \
  curl -OL https://github.com/jgm/pandoc/releases/download/${PANDOC_VERSION}/${PANDOC_FILE} > ${PANDOC_FILE} && \
  cd /opt && \
  tar xvfz /tmp/${PANDOC_FILE} && \
  rm /tmp/${PANDOC_FILE} && \
  useradd pandoc
USER pandoc

