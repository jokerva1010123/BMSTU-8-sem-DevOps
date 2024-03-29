Install sshpass, nginx and gitlab-runner
Create ssh-keygen, copy id_rsa to SSH_PRI_KEY in gitlab, id_rsa.pub to authorized_keys của máy cần truy cập

a

sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination 192.168.3.39:80
sudo iptables -t nat -A POSTROUTING -p tcp -d 192.168.3.39 --dport 80 -j SNAT --to-source 192.168.3.87