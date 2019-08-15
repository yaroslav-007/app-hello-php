Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/bionic64"
    config.vm.provision "shell", path: "./scripts/install_php.sh"
    config.vm.provision "shell", path: "./scripts/deploy_website.sh"
    config.vm.define "hello-php" do |c1|
      c1.vm.hostname = "hello-php"
      c1.vm.network :forwarded_port, host: 8000, guest: 80
    end
  end
