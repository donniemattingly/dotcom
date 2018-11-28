#!/usr/bin/env bash

# clear out public
rm -rf public 

# build site
hugo

# deploy to s3
aws s3 sync public s3://donniemattingly.com
