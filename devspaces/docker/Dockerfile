FROM 	ubuntu:16.04

LABEL description="Devspaces implementation for Speedscope"

RUN 	apt-get update && \
    	apt-get install -y apt-utils \
    	build-essential \
    	curl \
	    dialog \
        git \    	
    	mc \
    	sudo \    	
        wget

ENV 	LANG=C.UTF-8

# Installing NodeJs
RUN 	curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - &&\
 	    apt-get update && \
	    apt-get install -y nodejs 		

COPY    entrypoint.sh /entrypoint.sh
COPY    start.sh /start.sh

RUN chmod u+x /entrypoint.sh /start.sh

WORKDIR /data

EXPOSE 1234

ENTRYPOINT ["/entrypoint.sh"]
