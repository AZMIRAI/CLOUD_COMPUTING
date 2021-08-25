#!/bin/sh
. ./jenv.sh
java -Dfile.encoding=UTF-8 $JAVA_OPTIONS -classpath "$CLSPATH" ext.PromptLauncher startup $*
. ./renv.sh
