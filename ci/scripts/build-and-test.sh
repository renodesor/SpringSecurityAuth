#!/bin/sh
set -e

cd git-repo
	echo "**** Début du build maven ****"
	./mvnw clean install
	echo "**** Fin du build maven ****"
cd ..