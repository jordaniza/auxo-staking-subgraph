#!/bin/bash

rm -rf build
rm -rf generated

graph codegen

graph build

graph deploy --product hosted-service jordaniza/xyz-auxo
