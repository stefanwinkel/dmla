cinst vagrant -v 1.9.5 -yf 
cinst putty -v 0.69 -yf 
cinst virtualbox -v 5.1.22 -yf
vagrant plugin install vagrant-cachier  
vagrant plugin install vagrant-multi-putty

echo "Reboot and make sure Virtualize Intel VT-x is enabled"
