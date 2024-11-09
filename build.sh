#!/bin/bash

# First run the reveal.js build
npm run build:core

# Create and clean dist directory
rm -rf dist-temp
mkdir -p dist-temp

# Copy all necessary files to dist-temp
cp -r dist/* dist-temp/
cp -r plugin dist-temp/
cp -r images dist-temp/

# Run gulp to fix the HTML paths and copy to final location
gulp fix-html

# Clean up
rm -rf dist
mv dist-temp dist
