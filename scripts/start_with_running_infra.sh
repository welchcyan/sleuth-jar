#!/bin/bash

set -e

# build apps
./gradlew clean build --parallel

ROOT_FOLDER=${ROOT_FOLDER:-.}

nohup $JAVA_HOME/bin/java -jar "${ROOT_FOLDER}/service1/build/libs/*.jar" > build/service1.log &
nohup $JAVA_HOME/bin/java -jar "${ROOT_FOLDER}/service2/build/libs/*.jar" > build/service2.log &
nohup $JAVA_HOME/bin/java -jar "${ROOT_FOLDER}/service3/build/libs/*.jar" > build/service3.log &
nohup $JAVA_HOME/bin/java -jar "${ROOT_FOLDER}/service4/build/libs/*.jar" > build/service4.log &
