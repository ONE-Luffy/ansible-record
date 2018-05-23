使用方法
```
$ ansible-playbook -i inventory ec2.yml -e "vars_file=./ec2_vars.yml" -e 'acname=keypair' --tags keypair
$ ansible-playbook -i inventory ec2.yml -e "vars_file=./ec2_vars.yml" -e 'acname=launch' --tags launch
$ ansible-playbook -i inventory ec2.yml -e "vars_file=./ec2_vars.yml" -e 'acname=start' --tags start
$ ansible-playbook -i inventory ec2.yml -e "vars_file=./ec2_vars.yml" -e 'acname=stop' --tags stop
$ ansible-playbook -i inventory ec2.yml -e "vars_file=./ec2_vars.yml" -e 'acname=terminate' --tags terminate
$ ansible-playbook -i inventory ec2.yml -e "vars_file=./ec2_vars.yml" -e 'acname=describe' --tags describe
$ ansible-playbook -i inventory ec2.yml -e "vars_file=./ec2_vars.yml" -e 'acname=ssh' --tags ssh
```