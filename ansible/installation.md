### Steps to setup Ansible in local machine

1. Setup virtualenv to use ansible

	`virtualenv -p python3 .ansible`

2. Activate virtualenv

	`source .ansible/bin/activate`

3. Install ansible 

	`pip install --user ansible`

4. Verify installation

	`ansible --version`

5. Command to create role structure in ansible

	`ansible-galaxy init -v <rolename>`
