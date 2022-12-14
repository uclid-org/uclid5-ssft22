#!/bin/bash

echo "Moving into Simple Oracle dir"
cd SimpleOracle

echo "Running uclid on first simple oracle"
echo 'uclid test-oracle-function-1.ucl -s "delphi --smto"'
uclid test-oracle-function-1.ucl -s "delphi --smto"

echo 'uclid test-oracle-function-5.ucl -s "delphi --smto"'
uclid test-oracle-function-5.ucl -s "delphi --smto"

cd ..