#!/bin/sh
set -e

cd git-repo
	echo BUILD_NAME-2:${BUILD_NAME}
	revision=${BUILD_NAME}
	./mvnw clean package
	echo "**** Fin du build maven ****"
	ls -l 
	echo "**** List target ****"
	ls -l target
cd ..