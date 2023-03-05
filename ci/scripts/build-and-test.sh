#!/bin/sh
set -e

cd git-repo
	echo "**** Début du build maven ****"
	./mvnw clean package -Drevision=1.2.3
	echo "**** Fin du build maven ****"
	ls -l 
	echo "**** List target ****"
	ls -l target
	echo creation du repertoire distribution-repository
	mkdir /tmp/build/put/distribution-repository
	echo copie du fichier war
	cp target/SpringSecurityAuth-1.2.3.war /tmp/build/put/distribution-repository
	echo "**** List distribution-repository ****"
	ls -l /tmp/build/put/distribution-repository
	echo "**** List target in git-repo ****"
	ls -l /tmp/build/put/git-repo
cd ..