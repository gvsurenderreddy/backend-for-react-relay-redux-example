
Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/trusty64"

    config.vm.network "forwarded_port", guest:8888, host:8888
    config.vm.network "forwarded_port", guest:8000, host:8000

    config.vm.provision "ansible_local" do |ansible|
        ansible.playbook = "playbook/main.yml"
        ansible.verbose = "vvv"
        ansible.install = true
    end
end