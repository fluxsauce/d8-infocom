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
```

## Interacting with the site

http://d8-infocom.local

Drush:

```bash
drush use @d8-infocom.local
```

## Importing Configuration

```bash
npm run aquifer run local-config-import
```

## Exporting Configuration

```bash
npm run aquifer run config-export
```
