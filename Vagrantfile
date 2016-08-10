Vagrant.configure("2") do |config|	
  config.vm.define :memcached do |memc|
  	memc.vm.hostname = "memc"
  	memc.vm.box = "ubuntu/trusty64"

  	memc.vm.network :forwarded_port, guest: 11211, host: 11211
       
  	memc.vm.provision :shell, :path => "setup.sh"
  	memc.vm.provider "virtualbox" do |vb|    
      vb.memory = 1024
      vb.name = "memc"
    end
  end  
end