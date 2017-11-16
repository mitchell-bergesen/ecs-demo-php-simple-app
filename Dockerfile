# Pull base image.
FROM python:3.6

# Install Nginx
RUN \
  apt-get -y update && \
  pip install cement

WORKDIR /var/drone

CMD [ "python", "helloworld.py" ]

