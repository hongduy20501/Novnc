FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y wget && \
    #apt-get install -y nginx && \
    apt-get install -y curl && \
    apt-get install -y git && \
    apt-get install -y python3

RUN wget https://github.com/novnc/noVNC/archive/refs/tags/v1.4.0.tar.gz && \
	tar -xzvf v1.4.0.tar.gz
	
#COPY nginx.conf /etc/nginx/nginx.conf

COPY init.sh ./

WORKDIR ./

RUN chmod +x init.sh

CMD ["./init.sh"]
