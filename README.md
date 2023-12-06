# ansible_playbook_template
An Ansible playbook template written in Jinja2 to quickly generate an Ansible playbook.  The Ansible playbook can then be used 
within the Ansible Automation Platform or on the CLI.

`ansible-galaxy` is used to interact wtih the Jinja2 templates and generate the playbook and an inventory file.  
A Makefile is used to further automate this process by simplifing the task, saving time, and avoiding errors.

Dependencies:
---

- GNU make needs to be installed within the environment. 
- Two variables need to be defined on the CLI: repo_name, name
    - `repo_name` is the location of the newly created project repo.  `name` is the name of the project.

Usage:
---

All playbook repos will have a `play_` prefix.  Please use underscores for name separation.  

Generate a new play repo for an Apache install:

`$ make repo_path=/root/Repos1 name=apache_install run`

- This will create a new play repo at `/root/Repos1` with the name `play_apache_install`.

Remove same play repo, Apache install, in case of an error, etc. 

`$ make repo_path=/root/Repos1 name=apache_install clean `

- This will remove the created repository in its entirety.  Be diligent.

Help:
---

`$ make --help` \
`$ ansible-galaxy init --help`
