Vagrant.configure(2) do |config|
  config.vm.box = 'phusion/ubuntu-14.04-amd64'

  config.vm.provider :aws do |aws, override|
    override.vm.box_url="https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box"


    aws.access_key_id = ENV['AWS_ACCESS_KEY_ID']
    aws.secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
        
    aws.ami = ENV['AWS_BASE_AMI']
    aws.keypair_name = ENV['AWS_KEYPAIR_NAME']
    aws.instance_type="t2.small"
    aws.subnet_id = ENV['AWS_SUBNET']
    aws.associate_public_ip = true 
#    aws.elastic_ip = true
    ssh_host_attribute = :dns_name
    aws.security_groups = ENV['AWS_SECURITY_GROUP']
    override.ssh.private_key_path = ENV['SSH_PRIVATE_KEY_PATH']
    override.ssh.username = 'ubuntu'
    aws.tags = {
	"Name" => "Puppet Enterprise",
	"Owner" => "jbregman"
    }
    aws.user_data = File.read("user_data.sh")
   end
end
