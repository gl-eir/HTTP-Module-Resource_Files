#!/bin/bash
source ~/.bash_profile
set -x
VAR=""
build_path="/u01/eirapp/httpclient/"
build="eir-client-file-download.jar"
cd $build_path
status=`ps -ef | grep $build | grep java`
if [ "$status" != "$VAR" ]
then
 echo "Process Already Running"
else
 echo "Starting Process"

java -jar $build ./config.properties 1>/u02/eirdata/logs/httpclient/processlogs/logs-`date +\%Y\%m\%d\%H\%M\%S`.log 2>&1 &
echo "Process Started"

fi
