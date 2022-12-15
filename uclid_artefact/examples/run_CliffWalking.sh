#!/bin/bash

echo "Moving into CliffWalking (OpenAI gym) directory"
cd CliffWalking

echo "Running uclid on cliff walking.ucl to synthesis agent... this takes a while"
echo "uclid -y \"cvc5 --lang=sygus2\" cliff_walking.ucl"
time uclid -y "cvc5 --lang=sygus2" cliff_walking.ucl


echo "Running uclid on cliff walking.ucl to synthesis agent using delphi"
echo "uclid -y \"delphi --symo\" cliff_walking.ucl"
time uclid -y "delphi --symo" cliff_walking.ucl


echo "Running uclid on cliff walking_verify.ucl to verify pre-filled in solution"
echo "uclid cliff_walking_verify.ucl"
time uclid cliff_walking_verify.ucl
