#!/bin/sh
set -e

cd git-repo
	echo "**** Début du build maven ****"
	./mvnw clean package -Drevision=1.2.3
	echo "**** Fin du build maven ****"
	ls -l 
	echo "**** List target ****"
	ls -l target
	cp target/*.war /tmp/build/put/distribution-repository/
cd ..