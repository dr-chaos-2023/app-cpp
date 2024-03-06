#!/bin/sh
rootDir=$(pwd)
find "$rootDir" -type f -name "*.cpp" -print | sed "s|$rootDir/||"