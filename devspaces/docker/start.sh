#!/bin/bash

# This shell script clones, installs dependencies and runs the project. Created for convinient usage purposes.

echo Clonning the source code
git clone https://github.com/trilogy-group/speedscope.git
cd speedscope

echo Installing dependencies
npm install

echo Starting speedscope
npm run serve