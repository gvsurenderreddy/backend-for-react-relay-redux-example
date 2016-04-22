
Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/trusty64"

    config.vm.provider "virtualbox" do |v|
        v.customize ["modifyvm", :id, "--memory", 1024]
    end

    config.vm.network "forwarded_port", guest:8888, host:8888
    config.vm.network "forwarded_port", guest:8000, host:8000

    # Workaround for this bug: https://github.com/mitchellh/vagrant/issues/6793
    config.vm.provision "shell" do |s|
        s.inline = '[[ ! -f $1 ]] || grep -F -q "$2" $1 || sed -i "/__main__/a \\    $2" $1'
        s.args = ['/usr/bin/ansible-galaxy', "if sys.argv == ['/usr/bin/ansible-galaxy', '--help']: sys.argv.insert(1, 'info')"]
    end

    config.vm.provision "ansible_local" do |ansible|
        ansible.playbook = "playbook/main.yml"
        ansible.verbose = "vvv"
        ansible.install = true
    end
end