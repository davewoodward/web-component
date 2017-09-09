#!/bin/bash
rm -rf ~/.m2/repository/io
mvn clean verify
mvn --settings src/main/resources/settings.xml deploy:deploy-file -Dfile=target/webComponent.jar -DrepositoryId=snapshots -Durl=http://localhost:8081/repository/maven-snapshots -DpomFile=pom.xml
