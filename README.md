# Infocom Database

# Local development

## Dependencies

* [Ansible](http://docs.ansible.com/ansible/intro_installation.html): 2.0.x
* [Vagrant](http://www.vagrantup.com/downloads.html): 1.8.x
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads): 5.x

### Mac

```bash
brew install ansible
brew cask install vagrant
brew cask install virtualbox
```

## Getting started

Visit http://editorconfig.org/ for instructions on how to configure your IDE or editor to use the included `.editorconfig` file.

```bash
make
npm install
vagrant up
# Build.
npm run aquifer build
# Install.
npm run aquifer run local-install
# Configure.
npm run aquifer run local
# Set alias.
drush use @d8-infocom.local
```

## Exporting Configuration

```
npm run aquifer run config-export
```
