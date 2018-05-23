使用方法
```
ansible-playbook -i inventory dynamodb.yml -e "acname=create" --tags create
ansible-playbook -i inventory dynamodb.yml -e "acname=delete" --tags delete
```
目前还不能开启stream，实在不行就改成用command模块，执行aws命令创建stream