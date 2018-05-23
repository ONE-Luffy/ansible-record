使用方法
```
$ ansible-playbook -i contrib/ec2.py postgresql.yml -e "postgresql_tag=class_database" -e 'acname=install' --tags install
$ ansible-playbook -i contrib/ec2.py postgresql.yml -e "postgresql_tag=class_database" -e 'acname=stop' --tags stop
$ ansible-playbook -i contrib/ec2.py postgresql.yml -e "postgresql_tag=class_database" -e 'acname=start' --tags start
$ ansible-playbook -i contrib/ec2.py postgresql.yml -e "postgresql_tag=class_database" -e 'acname=restart' --tags restart
$ ansible-playbook -i contrib/ec2.py postgresql.yml -e "postgresql_tag=class_database" -e 'acname=enable' --tags enable
$ ansible-playbook -i contrib/ec2.py postgresql.yml -e "postgresql_tag=class_database" -e 'acname=disable' --tags disable
$ ansible-playbook -i contrib/ec2.py postgresql.yml -e "postgresql_tag=class_database" -e 'acname=add_remote_user' --tags add_remote_user
```