#!/bin/bash

SCRIPT_HOME="$( cd "$( dirname "$0" )" && pwd )"
cd $SCRIPT_HOME/..

build() {
	sudo docker build -t bitliner/nodejs-bower-grunt-mongodbclients:latest .
}
push() {
	sudo docker push bitliner/nodejs-bower-grunt-mongodbclients:latest
}


case $1 in
        run)
                run;;
        push)
                push;;
        build)
                build;;
        start)
                start;;
        stop)
                stop;;
        *)
                usage
                exit 1
        ;;
esac

