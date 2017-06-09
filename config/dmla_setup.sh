#!/bin/bash

ERROR_MSG="Please chose one of the two modes: \\n a) Unsecure: sh setup.sh unsecure \\n b) Secure: sh setup.sh secure \$DOMAIN \$VERY_STRONG_PASS
WORD"

if [ $# -eq 0 ]; then
  echo $ERROR_MSG

elif [ $# -eq 1 ]; then
  if [ "$1" = "unsecure" ]; then

    echo "------------------------------------------------------------"
    echo "############################### Installing suite in UNSECURE mode."
    echo "############################### This means |NO| SSL/HTTPS, |NO| (basic) authentication but |YES| port forwading from the containers to
the host machine. Only use this, when you're running this locally, on a virtual machine or in similarly safe conditions."
    echo "############################### This excludes all machines that are directly accesible from the internet."
    echo "############################### Hit enter to continue or Ctrl-C to abort..."
    read _
    echo "############################### Commencing!"
    echo "------------------------------------------------------------"

    echo "......"

	cd ~/elk-docker
	docker-compose up
	
	echo "Starting nginx filebeat sample"
	cd ~/elk-docker/nginx-filebeat/
	cp ~/elk-docker/nginx-filebeat/Dockerfile ~/elk-docker/nginx-filebeat/Dockerfile.save
	cp ~/elk-docker/nginx-filebeat/filebeat.yml ~/elk-docker/nginx-filebeat/filebeat.yml.save
	cp ~/dmla-v1/config/nginx-filebeat/Dockerfile ~/elk-docker/nginx-filebeat/
	cp ~/dmla-v1/config/nginx-filebeat/filebeat.yml ~/elk-docker/nginx-filebeat/
	

    echo "------------------------------------------------------------"
    echo "############################### Output from 'docker ps'..."
    echo "------------------------------------------------------------"
    docker ps

    echo "------------------------------------------------------------"
	  echo "------------------------------------------------------------"
    echo "############################### Finished - you're all set up. Use cleanup.sh to uninstall the suite."
    echo "------------------------------------------------------------"

   else
    echo $ERROR_MSG
  fi

elif [ $# -eq 3 ]; then
  if [ "$1" = "secure" ]; then

    export DOMAIN=$2
    export PASSWORD=$3

    echo "------------------------------------------------------------"
    echo "############################### Installing suite in SECURE mode."
    echo "############################### This means |YES| SSL/HTTPS, |YES| (basic) authentication but |NO| port forwading from the containers to
 the host machine. This mode is for running the suite out in the open, but won't work on machines that are not reachable directly via the interne
t."
    echo "############################### Also make sure you already set up DNS entries for grafana.${DOMAIN}, kibana.${DOMAIN}, prometheus.${DOM
AIN} and alertmanager.${DOMAIN}."
    echo  "############################### If you haven't done that, do it first. Hit enter to continue or Ctrl-C to abort..."
    read _
    echo "############################### Commencing!"
    echo "------------------------------------------------------------"

    echo "......"

  
	 echo "------------------------------------------------------------"
    echo "############################### Output from 'docker ps'..."
    echo "------------------------------------------------------------"
    docker ps

  
  else
    echo $ERROR_MSG
  fi

else
  echo $ERROR_MSG
fi

	
	
	
