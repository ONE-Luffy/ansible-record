使用方法
```
$ ansible-playbook -i contrib/ec2.py kudu.yml -e "kudu_tag=class_kudu" -e 'acname=stop' --tags stop
$ ansible-playbook -i contrib/ec2.py kudu.yml -e "kudu_tag=class_kudu" -e 'acname=start' --tags start
$ ansible-playbook -i contrib/ec2.py kudu.yml -e "kudu_tag=class_kudu" -e 'acname=enable' --tags enable
$ ansible-playbook -i contrib/ec2.py kudu.yml -e "kudu_tag=class_kudu" -e 'acname=disable' --tags disable
$ ansible-playbook -i contrib/ec2.py kudu.yml -e "kudu_tag=class_kudu" -e 'acname=restart' --tags restart
```