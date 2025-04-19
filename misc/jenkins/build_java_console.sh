#!/bin/bash

echo "java version"
java -version

echo "Building java console"
pwd
cd java_tools
./gradlew :ui:shadowJar
cd ..

[ -e java_console_binary/ecu-tech_console.jar ] || { echo "CONSOLE COMPILATION FAILED"; exit 1; }
echo "java console looks good"
