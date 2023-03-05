#!/bin/sh
set -e

cd git-repo
	echo "**** Début du build maven ****"
	./mvnw clean package -Drevision=1.2.3
	echo "**** Fin du build maven ****"
	ls -l 
	echo "**** List target ****"
	ls -l target
	echo "**** List target/SpringSecurityAuth-1.2.3 ****"
	ls -l target/SpringSecurityAuth-1.2.3

	echo copie du fichier war
	cp target/SpringSecurityAuth-1.2.3.war ../distribution-repository
	cp -R target/SpringSecurityAuth-1.2.3 ../distribution-repository/SpringSecurityAuth-1.2.3
	echo "**** List ../distribution-repository ****"
	ls -l ../distribution-repository
	
cd ..