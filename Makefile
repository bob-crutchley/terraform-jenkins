.PHONY = terraform_apply

define TFVARS
	-var project=$(shell gcloud config list --format 'value(core.project)') \
	-var terraform_keys=${TERRAFORM_KEYS}
endef

init:
	terraform init

terraform_apply:
	terraform apply ${TFVARS}

