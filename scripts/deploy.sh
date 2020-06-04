#!/bin/bash
cd `dirname $0`
cd ..
npm run build --prefix ./src
if [ $? != 0 ]; then
    exit 1
fi
sam build --use-container
if [ $? != 0 ]; then
    exit 1
fi
sam deploy
# sam deploy --guided