使用方法
```
$ ansible-playbook -i inventory sns.yml -e 'acname=create' --tags create
$ ansible-playbook -i inventory sns.yml -e 'acname=delete' --tags delete
$ ansible-playbook -i inventory sns.yml -e 'acname=send' --tags send
```