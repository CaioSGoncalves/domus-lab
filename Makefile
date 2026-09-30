ssh-setup:
	ansible-playbook infra/ansible/playbooks/ssh-setup.yml

setup:

	# ansible pve-setup:
	## config ssh pve
	## create proxmox token
	## create .env file
	#
	# terraform init

plan:
	# terraform plan

deploy:
	# terraform apply
	# ansible vm-docker-setup
	## Install docker
	## copy apps/docker-compose.yml
	## docker-compose up

health:
	# ansible vm-docker-health
