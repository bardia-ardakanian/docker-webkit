FROM ubuntu:bionic

LABEL maintainer="Bardia Ardakanian" \
    description="A Docker image with various web/http packages pre-installed."


RUN apt-get -y update && apt-get install --no-install-recommends --yes --force-yes \ 
						telnet \
						curl \
						apache2-utils \
						jq \
						oathtool \
						wget \
						python \
						python-pip

RUN pip install requests

CMD ["/bin/bash"]
