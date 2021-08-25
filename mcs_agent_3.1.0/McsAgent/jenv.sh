#!/bin/sh

JAVA_BIN_DIR=./jre/bin

export OLD_PATH=$PATH
export PATH=$JAVA_BIN_DIR:$PATH
export JV=`java -version 2>&1 | head -n 1 | cut -d\" -f 2 | cut -c1-3`
echo java version=[$JV]
LIB_DIR=./lib
LIB_JDBC_DIR=$LIB_DIR/jdbc
CLSPATH=.
for f in $LIB_DIR/*.jar
do
    CLSPATH=$CLSPATH:$f
done
for f in $LIB_DIR/j6/*.jar
do
    CLSPATH=$CLSPATH:$f
done
for f in $LIB_JDBC_DIR/*.jar
do
    CLSPATH=$CLSPATH:$f
done
export CLSPATH

#export JAVA_OPTIONS=
