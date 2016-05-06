CURRENT_DIR = $(shell pwd)

all: vm

vm:
	cp -r lib/drupal-vm vm
	cp drupal-vm.config.yml vm/config.yml
	sed -i '' -e "s~REPLACE_LOCAL_PATH~$(CURRENT_DIR)~g" vm/config.yml
	sudo ansible-galaxy install -r vm/provisioning/requirements.yml
