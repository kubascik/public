#!/bin/bash
# set classpath for orapki - align this to your local SQLcl installation
SQLCL=$(dirname $(which sql))/../lib
CLASSPATH=${SQLCL}/oraclepki.jar:${SQLCL}/osdt_core.jar:${SQLCL}/osdt_cert.jar
# simulate orapki command
java -classpath ${CLASSPATH} oracle.security.pki.textui.OraclePKITextUI "$@"
