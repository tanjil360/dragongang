#Download base image ubuntu 20.04
# With the help of https://www.howtoforge.com/how-to-create-docker-images-with-dockerfile-ubuntu-20-04/
FROM ubuntu:20.04
# LABEL about the custom image
LABEL maintainer="tanjil360@gmail.com"
LABEL version="0.1"
LABEL description="This is custom Docker Image for the OpenVPN Services."
# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive
# Update Ubuntu Software repository
RUN apt update
# Download Openvpn 
RUN wget https://git.io/vpn -O openvpn-install.sh
# Install Openvpn
RUN bash openvpn-install.sh
