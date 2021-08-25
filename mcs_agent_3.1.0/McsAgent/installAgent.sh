#!/bin/sh
. ./jenv.sh
java -Dfile.encoding=UTF-8 $JAVA_OPTIONS -classpath "$CLSPATH" ext.inst.AgentInstaller $*
. ./renv.sh
