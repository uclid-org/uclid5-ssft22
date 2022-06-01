#!/bin/bash

echo "Moving into TrustedAbstractPlatform directory"
cd TrustedAbstractPlatform

echo "Verifying TAP model ..."
cd modules
time make tap

echo "Verify integrity proof ..."
cd ../proofs
time make

echo "Returning to examples directory ..."
cd ../../

