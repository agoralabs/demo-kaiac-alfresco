#!/bin/sh

current_folder=$PWD
# get the files from S3
aws s3 cp s3://kaiac.agoralabs.org/alf_data.zip .

cd /vagrant/demo-kaiac-alfresco/data/alf-repo-data

unzip $current_folder/alf_data.zip
