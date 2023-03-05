#!/bin/sh
set -e

cd git-repo
	./mvnw clean package
	echo "**** Fin du build maven ****"
	ls -l 
	echo "**** Copie du pom ****"
	cp pom.xml target/pom-${revision}.xml
	ls -l target
cd ..