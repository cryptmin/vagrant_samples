mkdir /tmp/download
cd /tmp/download

wget https://www.python.org/ftp/python/3.4.2/Python-3.4.2.tgz

tar -xvf Python-3.4.2.tgz

sudo mkdir /opt/python342

sudo chown -R vagrant:vagrant /opt/python342

cd Python-3.4.2

./configure --prefix=/opt/python342

make

make install
