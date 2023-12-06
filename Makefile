# Simple Makefile to generate an Ansible playbook.

# user-defined variables: repo_path, name
repo_path = local_repository
name = name_of_playbook

# Makefile parameters

default: run

.PHONY: run clean

run:
	ansible-galaxy init --init-path $(repo_path) --role-skeleton=templates play_$(name)

clean:
	rm -rfi $(repo_path)/play_$(name)