#!/bin/bash
if [$XXX=0]
then
        rm -rf /etc/nginx
        git clone $GIT_URL /etc/nginx
        /etc/init.d/nginx start
else
        rm -rf /etc/nginx
        git clone $GIT_URL /etc/nginx
        cat /etc/nginx/install.ls | apt -y install
fi
