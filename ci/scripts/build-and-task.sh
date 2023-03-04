#!/bin/sh
set -e

cd git-repo
	./mvnw clean install
cd ..