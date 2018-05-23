使用方法
```
$ ansible-playbook -i contrib/ec2.py zookeeper.yml -e "zookeeper_tag=class2_zookeeper" -e 'acname=install' --tags install
$ ansible-playbook -i contrib/ec2.py zookeeper.yml -e "zookeeper_tag=class2_zookeeper" -e 'acname=start' --tags start
$ ansible-playbook -i contrib/ec2.py zookeeper.yml -e "zookeeper_tag=class2_zookeeper" -e 'acname=stop' --tags stop
$ ansible-playbook -i contrib/ec2.py zookeeper.yml -e "zookeeper_tag=class2_zookeeper" -e 'acname=uninstall' --tags uninstall
$ ansible-playbook -i contrib/ec2.py zookeeper.yml -e "zookeeper_tag=class2_zookeeper" -e 'acname=info' --tags info
$ ansible-playbook -i contrib/ec2.py zookeeper.yml -e "zookeeper_tag=class2_zookeeper" -e 'acname=describe' --tags describe
```