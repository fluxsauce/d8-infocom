# Require plugins.
required_plugins = %w(vagrant-hostsupdater vagrant-auto_network)
plugin_installed = false
required_plugins.each do |plugin|
  unless Vagrant.has_plugin?(plugin)
    system "vagrant plugin install #{plugin}"
    plugin_installed = true
  end
end

# If new plugins installed, restart Vagrant process
if plugin_installed === true
  exec "vagrant #{ARGV.join' '}"
end

dir = File.dirname(__FILE__) + '/'
load dir + "vm/Vagrantfile"
