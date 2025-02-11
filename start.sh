#!/bin/bash

set -e

error_exit() {
  echo "Error: $1"
  exit 1
}

if [ "$#" -ne 1 ]; then
  error_exit "Usage: $0 <package_name> (e.g., com.example.app)"
fi

PACKAGE_NAME=$1

if [ "$PACKAGE_NAME" == "com.template" ]; then
  error_exit "Package name 'com.template' is not allowed."
fi

if ! [[ "$PACKAGE_NAME" =~ ^[a-z]+(\.[a-z]+)+$ ]]; then
  error_exit "Invalid package name: '$PACKAGE_NAME'"
fi

BASE_DIR="app/src/main/kotlin"
COM_TEMPLATE_DIR="$BASE_DIR/com/template"

if [ ! -d "$COM_TEMPLATE_DIR" ]; then
  error_exit "Script works only for template project"
fi

DEST_DIR="$BASE_DIR/$(echo "$PACKAGE_NAME" | tr '.' '/')"
DEST_BASENAME=$(basename "$DEST_DIR")

mkdir -p "$DEST_DIR"

if [ -d "$COM_TEMPLATE_DIR" ]; then
  find "$COM_TEMPLATE_DIR" -mindepth 1 -maxdepth 1 -not -name "$DEST_BASENAME" -exec mv {} "$DEST_DIR/" \;
fi

if [[ "$PACKAGE_NAME" != "com.template" && "$PACKAGE_NAME" != "com.template."* ]]; then
  rmdir "$COM_TEMPLATE_DIR" 2>/dev/null || true
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
  find "$DEST_DIR" -type f -name "*.kt" -exec sed -i '' "s/^package .*/package $PACKAGE_NAME/g" {} +
else
  find "$DEST_DIR" -type f -name "*.kt" -exec sed -i "s/^package .*/package $PACKAGE_NAME/g" {} +
fi

GRADLE_KTS_FILE="app/build.gradle.kts"
if [ ! -f "$GRADLE_KTS_FILE" ]; then
  error_exit "File $GRADLE_KTS_FILE not found"
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i '' "s/^\([[:space:]]*\)namespace[[:space:]]*=[[:space:]]*\"com\.template\"/\1namespace = \"$PACKAGE_NAME\"/" "$GRADLE_KTS_FILE"
else
  sed -i "s/^\([[:space:]]*\)namespace[[:space:]]*=[[:space:]]*\"com\.template\"/\1namespace = \"$PACKAGE_NAME\"/" "$GRADLE_KTS_FILE"
fi

if [ ! -f signing.properties ]; then
  cat <<EOF > signing.properties
keystore.path=<your_keystore_path>
keystore.password=<your_keystore_password>
key.alias=<your_key_alias>
key.password=<your_key_password>
EOF
fi

if [ -d ".git" ]; then
  rm -rf .git
fi

echo "Script execution completed successfully"

rm -- "$0"
