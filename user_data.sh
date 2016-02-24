wget -O /home/ubuntu/puppet_latest.tar.gz "https://pm.puppetlabs.com/cgi-bin/download.cgi?dist=ubuntu&rel=14.04&arch=amd64&ver=latest"
cd /home/ubuntu
gzip -d puppet_latest.tar.gz
tar -xvf puppet_latest.tar
