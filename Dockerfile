# Pull base image.
FROM python:3.6

RUN \
  apt-get -y update && \
  apt-get -y install vim

# Install pip packages we need
RUN \
  pip install uwsgi && \
  pip install falcon

WORKDIR /var/worker

# Run nginx and uwsgi when container starts
ENTRYPOINT uwsgi --ini /var/worker/uwsgi.ini
