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
On a Windows system, execute dmla/setup/dmla_config.bat
Then run up the environment with the command. This will install DMLA 

```
vagrant up
```
Once the DMLA framework is built, we will ssh into it, either by vagrant ssh or vagrant putty. (Plugin is installed during dmla_config.bat)
```
vagrant putty
```

Logging: http://localhost:5601/app/kibana#

[![!Kibana](https://github.com/stefanwinkel/dmla/blob/master/Screenshots/kibaba_overview.PNG)](#Dashboard)


Monitoring: http://localhost:3000/dashboard/db/main-overview

[![!Grafana](https://github.com/stefanwinkel/dmla/blob/master/Screenshots/grafana_overview.jpg)](#Dashboard)


AlertManager: http://localhost:9093/#/alerts
[![!Prometheus](https://github.com/stefanwinkel/dmla/blob/master/Screenshots/prometheus_alertmanager.JPG)](#Dashboard)


# Clean Up
```
Exit back to your host machines terminal and issue `vagrant destroy`

