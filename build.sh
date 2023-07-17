#!/bin/bash

# cleanup
rm -rf deploy_me.zip package

# install dependencies
pip3 install --target ./package "urllib3<2" requests Mastodon.py atproto

# build zip with all data
cd package
zip -r ../deploy_me.zip .
cd ..
zip -g deploy_me.zip lambda_function.py