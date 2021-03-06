#!/bin/bash


#  Update to your current JAVA HOME
JAVA_HOME=/usr/java/jdk1.7.0_67-cloudera

# Update to the Region Tool home folder
TOOL_HOME_DIR=/opt/HBase-RegionTool

TOOL_BIN_DIR=$TOOL_HOME_DIR/bin
TOOL_LIB_DIR=$TOOL_HOME_DIR/lib

LIB_DIR=/opt/cloudera/parcels/CDH/lib

export CLASSPATH=$LIB_DIR/hbase/lib/*:$LIB_DIR/hadoop/client/*:/opt/cloudera/parcels/CDH/jars/metrics-core-2.2.0.jar:$LIB_DIR/hadoop/client-0.20/netty-all.jar:/etc/hbase/conf/:$TOOL_LIB_DIR/region-tool-0.1-hbase1.2-cdh5.8.4.jar

$JAVA_HOME/bin/java -Dlog4j.configuration=tool-log4j.properties admin.RegionsTool "$@"
