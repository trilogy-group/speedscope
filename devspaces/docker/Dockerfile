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

COPY    entrypoint.sh /entrypoint.sh
COPY    start.sh /start.sh

RUN     chmod u+x /entrypoint.sh /start.sh && \
        sed -i 's/^M$//' /entrypoint.sh && \
        sed -i 's/^M$//' /start.sh 


WORKDIR /data

EXPOSE 1234

ENTRYPOINT ["/entrypoint.sh"]
