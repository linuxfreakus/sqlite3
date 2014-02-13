#!/bin/bash

# Get the path to this script and make it the working directory
# so that we can produce out of source builds
SCRIPTPATH=$( cd $(dirname $0) ; pwd -P )
cd ${SCRIPTPATH}

if [[ $1 == "clean" ]]; then
   echo "Cleaning project directory..."
   git clean -f -d -x "${SCRIPTPATH}"
   echo "Clean succeeded."
   exit
fi

# The normal build for this machine
mkdir -p build
cd build
cmake ..
make
