# Installing Ansible
Run the following command in order to get Ansible installed on your Debian based OS.
`bash -c install_ansible.sh`

# How to run
The command below shows how to run an Ansible playbook. 
My playbook probably won't fit your needs but may be a good starting point for you.
`ansible-playbook <yml-file> --ask-become-pass [--tags <tags-separated-by-comma>] [--ask-vault-password]`

You can use tags to setup just small parts of the playbook, or just run without tags and everything will be installed.
Mind that if you need to setup SSH or other features that use personal information (like passwords) you'll need to provide the vault password by using the last option `--ask-vault-password`.
