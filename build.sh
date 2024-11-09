#!/bin/bash

# clean everything before
rm -rf dist

# First run the reveal.js build
npm run build:core

# Create and clean dist directory
# rm -rf dist-temp
# mkdir -p dist-temp

# Copy all necessary files to dist-temp
# cp -r dist/* dist-temp/
cp reset.css dist/
cp -r plugin dist/
cp -r images dist/


# Run gulp to fix the HTML paths and copy to final location
gulp fix-html

echo "running here"

# Clean up
# mv dist-temp dist
