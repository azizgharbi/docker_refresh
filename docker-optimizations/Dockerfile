# Optimazation with a lower distibution size like aplin

FROM ubuntu:16.04 as ubimg
RUN  apt-get -y update
RUN  apt-get -y install curl
RUN  curl www.google.com | wc -c > google-size

FROM alpine
COPY --from=ubimg /google-size /google-size
ENTRYPOINT echo "size of google"; cat google-size;
