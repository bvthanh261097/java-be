#!/usr/bin/env bash
echo '-------- remove file backup -------'
sudo rm -rf /home/it_admin/java-backup/*
echo '-------- start copy file to backup--------'
sudo cp /home/it_admin/java-new/hihi-0.0.1-SNAPSHOT.jar /home/it_admin/java-backup/
echo '------start copy jar to folder java application -----'
sudo cp /var/lib/jenkins/workspace/build test local/target/hihi-0.0.1-SNAPSHOT.jar /home/it_admin/java-new/
echo '---------copy file successfully--------------'
sudo java -jar /home/it_admin/java-new/hihi-0.0.1-SNAPSHOT.jar

