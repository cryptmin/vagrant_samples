#mkdir ~/download
cd ~/download

wget http://downloads.dataiku.com/public/studio/3.0.1/dataiku-dss-3.0.1.tar.gz
tar xzf dataiku-dss-3.0.1.tar.gz
chown -R vagrant:vagrant dataiku-dss-3.0.1
cd dataiku-dss-3.0.1

mkdir /opt/dataiku_data
chown -R vagrant:vagrant /opt/dataiku_data

sudo -u vagrant ./installer.sh -d /opt/dataiku_data -p 11000

/opt/dataiku_data/bin/dss start
