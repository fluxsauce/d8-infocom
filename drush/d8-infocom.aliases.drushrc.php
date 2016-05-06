<?php

/**
 * Drupal VM drush aliases.
 *
 * @see example.aliases.drushrc.php.
 */

$aliases['local'] = array(
  'uri' => 'd8-infocom.local',
  'root' => '/var/www/build',
  'remote-host' => 'd8-infocom.local',
  'remote-user' => 'vagrant',
  'ssh-options' => '-o PasswordAuthentication=no -i ' . drush_server_home() . '/.vagrant.d/insecure_private_key',
);

