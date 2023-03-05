#!/bin/sh
set -e

cd git-repo
	echo "**** Début du build maven ****"
	./mvnw clean package -Drevision=1.2.3
	echo "**** Fin du build maven ****"
	ls -l 
	echo "**** List target ****"
	ls -l target
	cd /
	echo "**** List /tmp/build/put/ ****"
	ls -l /tmp/build/put/
	echo copie du fichier war
	cp /tmp/build/put/git-repo/target/SpringSecurityAuth-1.2.3.war /tmp/build/put/distribution-repository
	echo "**** List distribution-repository ****"
	ls -l /tmp/build/put/distribution-repository
	echo "**** List target in git-repo ****"
	ls -l /tmp/build/put/git-repo/target
	
cd /tmp/build/put