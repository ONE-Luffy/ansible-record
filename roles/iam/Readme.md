使用方法
```
ansible-playbook -i inventory iam.yml -e "acname=create_role" --tags create_role
ansible-playbook -i inventory iam.yml -e "acname=delete_role" --tags delete_role
ansible-playbook -i inventory iam.yml -e "acname=add_policy" --tags add_policy
ansible-playbook -i inventory iam.yml -e "acname=delete_policy" --tags delete_policy
```