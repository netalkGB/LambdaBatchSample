#!/bin/bash

sam build --use-container
if [ $? != 0 ]; then
    exit 1
fi
sam local invoke --docker-network host