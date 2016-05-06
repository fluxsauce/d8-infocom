CURRENT_DIR = $(shell pwd)

all: vm

vm:
  # Copy Drupal VM.
	cp -r lib/drupal-vm vm

	# Copy custom Drupal VM configuration.
	cp local/drupal-vm.config.yml vm/config.yml

	# Drupal local development settings for Drupal VM.
	chmod a+w settings/settings.local.php
	cp local/settings.local.php settings/settings.local.php
	chmod go-w settings/settings.local.php

	# Drupal secret credential settings for Drupal VM.
	chmod a+w settings/settings.secret.php
	cp local/settings.secret.php settings/settings.secret.php
	chmod go-w settings/settings.local.php

	# Drush aliases.
	cp drush/d8-infocom.aliases.drushrc.php ~/.drush
	drush cc drush

	# Configure path.
	sed -i '' -e "s~REPLACE_LOCAL_PATH~$(CURRENT_DIR)~g" vm/config.yml

	# Install Ansible requirements..
	sudo ansible-galaxy install -r vm/provisioning/requirements.yml
