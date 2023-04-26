##!/usr/bin/env bash
#echo '-------- remove file backup -------'
#sudo rm -rf /home/it_admin/java-backup/*
#echo '-------- start copy file to backup--------'
##sudo cp /home/it_admin/java-new/hihi-0.0.1-SNAPSHOT.jar /home/it_admin/java-backup/
#echo '------start copy jar to folder java application -----'
#sudo cp /var/lib/jenkins/workspace/build/test/local/target/hihi-0.0.1-SNAPSHOT.jar /home/it_admin/java-new/
#echo '---------copy file successfully--------------'
#sudo java -jar /home/it_admin/java-new/hihi-0.0.1-SNAPSHOT.jar
#


echo 'The following Maven command installs your Maven-built Java application'
echo 'into the local Maven repository, which will ultimately be stored in'
echo 'Jenkins''s local Maven repository (and the "maven-repository" Docker data'
echo 'volume).'
set -x
mvn jar:jar install:install help:evaluate -Dexpression=project.name
set +x

echo 'The following complex command extracts the value of the <name/> element'
echo 'within <project/> of your Java/Maven project''s "pom.xml" file.'
set -x
NAME=`mvn help:evaluate -Dexpression=project.name | grep "^[^\[]"`
set +x

echo 'The following complex command behaves similarly to the previous one but'
echo 'extracts the value of the <version/> element within <project/> instead.'
set -x
VERSION=`mvn help:evaluate -Dexpression=project.version | grep "^[^\[]"`
set +x

echo 'The following command runs and outputs the execution of your Java'
echo 'application (which Jenkins built using Maven) to the Jenkins UI.'
set -x
java -jar target/${NAME}-${VERSION}.jar