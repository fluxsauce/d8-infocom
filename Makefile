CURRENT_DIR = $(shell pwd)

all: vm

vm:
	cp -r lib/drupal-vm vm
	cp local/drupal-vm.config.yml vm/config.yml
	cp drush/d8-infocom.aliases.drushrc.php ~/.drush
	cp local/settings.local.php settings/settings.local.php
	cp local/settings.secret.php settings/settings.secret.php
	drush cc drush
	sed -i '' -e "s~REPLACE_LOCAL_PATH~$(CURRENT_DIR)~g" vm/config.yml
	sudo ansible-galaxy install -r vm/provisioning/requirements.yml
