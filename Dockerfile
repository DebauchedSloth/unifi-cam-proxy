FROM python:alpine
WORKDIR /app

RUN apk add --update gcc libc-dev linux-headers libusb-dev
RUN apk add --update ffmpeg netcat-openbsd git

COPY . .
RUN pip install .
RUN which unifi-cam-proxy

COPY ./docker/entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["unifi-cam-proxy"]
