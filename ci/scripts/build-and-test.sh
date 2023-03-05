#!/bin/sh
set -e

cd git-repo
	echo "**** Début du build maven ****"
	echo BUILD_TEAM_NAME:${BUILD_TEAM_NAME}
	echo BUILD_PIPELINE_NUMBER:${BUILD_PIPELINE_NUMBER}
	echo BUILD_PIPELINE_NAME:${BUILD_PIPELINE_NAME}
	echo BUILD_JOB_NAME:${BUILD_JOB_NAME}
	echo BUILD_NAME:${BUILD_NAME}
	echo uri:"http://localhost:8080/teams/${BUILD_TEAM_NAME}/pipelines/${BUILD_PIPELINE_NUMBER}/jobs/${BUILD_JOB_NAME}/builds/${BUILD_NAME}"
	SET revision=${BUILD_NAME}
	./mvnw clean install
	echo "**** Fin du build maven ****"
	ls -l 
	echo "**** Copie du pom ****"
	cp pom.xml target/pom-${revision}.xml
	ls -l target
cd ..