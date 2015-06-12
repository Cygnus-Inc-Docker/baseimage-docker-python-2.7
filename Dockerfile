FROM quay.io/cygnus/baseimage-docker-python

RUN python-build --definitions
RUN mkdir /opt/python
RUN /usr/local/python-build 2.7.10 /opt/python
