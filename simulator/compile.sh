#!/usr/bin/env bash

set -euo pipefail

rm -f build/ecu-tech_simulator.exe
make -j8 -r $@
[ $? -eq 0 ] || { echo "Simulator compilation failed"; exit 1; }
file build/ecu-tech_simulator
echo "TIMESTAMP $(date "+%D %T.%2N") just compiled rusEFI simulator"
