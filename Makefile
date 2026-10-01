help:
	@echo "========================================================================"
	@echo "                 DOMUS LAB - COMANDOS DISPONÍVEIS                       "
	@echo "========================================================================"
	@echo "  make setup-ssh      - Configura chaves e atalhos SSH locais"
	@echo "  make setup-token    - Configura o Token do Terraform local"
	@echo "  make terra-plan     - Executa terraform plan"
	@echo "  make terra-apply    - Executa terraform apply"
	@echo "  make deploy         - Executa o deploy"
	@echo "  make health         - Verifica o estado de saúde"
	@echo "========================================================================"

setup-ssh:
	cd infra/ansible && ansible-playbook playbooks/pve-host/01-ssh.yml

setup-token:
	cd infra/ansible && ansible-playbook playbooks/pve-host/02-api-token.yml

terra-plan:
	. ./.env && cd terraform && terraform plan

terra-apply:
	. cd infra && ./.env && cd terraform && terraform apply

deploy:
	# terraform apply
	# ansible vm-docker-setup
	## Install docker
	## copy apps/docker-compose.yml
	## docker-compose up

health:
	# ansible vm-docker-health
