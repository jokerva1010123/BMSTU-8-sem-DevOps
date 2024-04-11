```
ansible all -m apt -a "name=snapd state=latest" --become --ask-become-pass
```
```
ansible-playbook --ask-become-pass install_apache.yml 
```
