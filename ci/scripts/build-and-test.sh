#!/bin/sh
set -e

cd git-repo
	echo "**** Début du build maven ****"
	./mvnw clean install
	echo "**** Fin du build maven ****"
	ls -l 
	echo "**** Copie du pom ****"
	cp pom.xml target/pom.xml
	ls -l target
cd ..