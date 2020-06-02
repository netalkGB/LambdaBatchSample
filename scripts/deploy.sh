#!/bin/bash

sam build --use-container
if [ $? != 0 ]; then
    exit 1
fi
sam deploy
# sam deploy --guided