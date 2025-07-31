#!/bin/bash

# Define the new version number
NEW_VERSION="4.2.0"

# Find all pom.xml files and replace the version number
# This command is robust and works on both Linux and macOS runners
find . -name "pom.xml" -exec sed -i '' -e "s|<version>4.2.0-SNAPSHOT</version>|<version>${NEW_VERSION}</version>|g" {} \;

echo "Updated version to ${NEW_VERSION} in all pom.xml files."
