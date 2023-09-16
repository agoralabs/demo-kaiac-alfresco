#!/bin/sh

current_folder=$PWD
# create a zip archive

mkdir bkp
cd /vagrant/demo-kaiac-alfresco/data/alf-repo-data
zip -r $current_folder/bkp/alf_data.zip .
# command -r name-of-your-new-zip-file.zip the-folder-you-want-to-zip


# push the files to S3


/usr/local/bin/aws s3 cp --recursive $current_folder/bkp s3://kaiac.agoralabs.org

# delete the contents of the other directories as we don't need to store them once backed up
rm -rf $current_folder/bkp