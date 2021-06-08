Vagrant.configure('2') do |config|
  config.vagrant.plugins     = ['vagrant-disksize', 'vagrant-env', 'vagrant-vbguest']
  config.env.enable
  config.vbguest.auto_update = true
  config.vm.box              = 'ubuntu/focal64'
  config.disksize.size       = ENV['VAGRANT_WORKSPACE_DISK_SIZE'].to_s
  config.vm.provision        'shell', privileged: true, path: 'vagrant.sh'

  config.vm.provider 'virtualbox' do |v|
    v.gui       = true
    v.memory    = ENV['VAGRANT_WORKSPACE_MEMORY_IN_MB'].to_s
    v.cpus      = ENV['VAGRANT_WORKSPACE_CPUS'].to_s
    v.customize ['modifyvm', :id, '--monitorcount',   ENV['VAGRANT_WORKSPACE_MONITORS'].to_s]
    v.customize ['modifyvm', :id, '--vram',           ENV['VAGRANT_WORKSPACE_VIDEO_MEMORY_IN_MB'].to_s]
    v.customize ['modifyvm', :id, '--clipboard',      'bidirectional']
    v.customize ['modifyvm', :id, '--draganddrop',    'bidirectional']
    v.customize ['modifyvm', :id, '--nested-hw-virt', 'on']
  end
end
