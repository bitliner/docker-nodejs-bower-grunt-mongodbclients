# docker-nodejs-bower-grunt-mongodbclients

Docker image for: 

* nodejs
* grunt
* bower
* mongodb-clients (mongoexport, mongoimport, mongo, etc.)


# Usage example

Create a dockerfile Dockerfile as following

```
FROM bitliner/nodejs-bower-grunt-mongodbclients


### e.g. eventually use mongoimport
RUN mongoimport --host db --port 27017 -d db1 -c coll1 < /usrc/src/app/data/coll1.json

COPY . /usr/src/app
WORKDIR /usr/src/app

EXPOSE 9000

CMD ["grunt", "serve"]
```
