FROM 	ubuntu:16.04

LABEL description="Devspaces implementation for Speedscope"

ENV 	LANG=C.UTF-8

RUN 	apt-get update && \
    	apt-get install -y apt-utils \
    	build-essential \
    	curl \
	    dialog \
        git \    	
    	mc \
    	sudo \    	
        wget && \
        curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - && \
 	    apt-get update && \
	    apt-get install -y nodejs && \
        apt-get clean

COPY    start.sh /start.sh

RUN chmod u+x /start.sh

WORKDIR /data

EXPOSE 1234

CMD ["tail", "-f", "/dev/null"]
