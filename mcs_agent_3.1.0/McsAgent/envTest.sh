#!/bin/sh
. ./jenv.sh
java -Dfile.encoding=UTF-8 -Duser.timezone=Asia/Seoul $JAVA_OPTIONS -classpath "$CLSPATH" ext.tl.EnvTest $*
. ./renv.sh
