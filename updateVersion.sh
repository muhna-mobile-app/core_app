#!/bin/bash

# Read the version from package.json
VERSION=$(cat package.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[", ]//g')

# Update the version in pubspec.yaml
sed -i "s/^version: .*/version: $VERSION/" pubspec.yaml

# Print the old and new versions to the console
echo "Old version: $(cat pubspec.yaml | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[", ]//g')"
echo "New version: $VERSION"