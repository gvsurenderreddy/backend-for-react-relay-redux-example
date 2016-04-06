
Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/trusty64"

    config.vm.network "forwarded_port", guest:8888, host:8888
    config.vm.network "forwarded_port", guest:8000, host:8000

    config.vm.synced_folder "wordpress", "/vagrant/wordpress", type: "rsync"
    config.vm.synced_folder "mysql", "/vagrant/mysql", type: "rsync"

    config.vm.provision "ansible_local" do |ansible|
        ansible.playbook = "playbook/main.yml"
        ansible.verbose = true
        ansible.install = true
    end
end