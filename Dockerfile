FROM digitallyseamless/nodejs-bower-grunt

RUN apt-get update && apt-get -y install mongodb-clients
