FROM node:alpine

WORKDIR /usr/sdfcli

## Instação do Python
ENV PYTHONUNBUFFERED=1

RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python

RUN python3 -m ensurepip

RUN pip3 install --no-cache --upgrade pip setuptools

## Instalação do Java
RUN apk add openjdk11

## Instalação do SDF Cli
RUN npm install -g @oracle/suitecloud-cli

## your comand 
## CMD ["npm", "run", "serve"]
    
ENTRYPOINT ["tail", "-f", "/dev/null"]
  
  

