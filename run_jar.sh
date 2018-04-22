#!/bin/bash

set -e
set -u

dateYMD=`date +20%y%m%d`
routePath=/product/mserver
OUTLOG=${routePath}/log/console_log/${MS_NAME}_${dateYMD}.out

if [ ! -f ${routePath}/${MS_NAME}.jar ];then
        echo    "${MS_NAME}.jar is not exist"
        exit
fi

#java -jar ${routePath}/${MS_NAME}.jar --spring.cloud.config.profile=${ENV_VALUE} >${OUTLOG}

java -jar ${routePath}/${MS_NAME}.jar --spring.profiles.active=${ENV_VALUE} >${OUTLOG}
