log_level :error
chef_server_url 'https://192.168.110.4/organizations/devops'
validation_key '/etc/chef/devops-validator.pem'
validation_client_name 'devops-validator'
encrypted_data_bag_secret '/etc/chef/smalltown_secret_key'
verify_api_cert false
ssl_verify_mode :verify_none
node_name 'Chef-Nodes-Demo'
environment 'LEMP_Demo'
interval 1800
