#!/bin/bash

# clear the old file if it exists
if [ -f ./schema.graphql ]; then
  rm ./schema.graphql
fi

# initialize with the base.graphql file
echo "# AUTOGENERATED USING build.sh DO NOT EDIT THIS VERSION" >>./schema.graphql
cat ./schema/base.graphql >>./schema.graphql
echo "" >>./schema.graphql

# enable nullglob option to prevent errors if no files match the pattern
shopt -s nullglob

# concatenate all .gql and .graphql files in the schema directory with a newline after each file
for file in ./schema/*.{gql,graphql}; do
  if [ "$file" == "./schema/base.graphql" ]; then
    continue
  fi
  cat "$file" >>./schema.graphql
  echo "" >>./schema.graphql
done

# disable nullglob option to restore default behavior
shopt -u nullglob

rm -rf generated
graph codegen

rm -rf build
graph build
