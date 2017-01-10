# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

# server 'example.com', user: 'deploy', roles: %w{app db web}, my_property: :my_value
# server 'example.com', user: 'deploy', roles: %w{app web}, other_property: :other_value
# server 'db.example.com', user: 'deploy', roles: %w{db}



# role-based syntax
# ==================

# Defines a role with one or multiple servers. The primary server in each
# group is considered to be the first unless any  hosts have the primary
# property set. Specify the username and a domain or IP for the server.

role :app, %w{vishal@localhost}
role :web, %w{vishal@localhost}
role :db,  %w{vishal@localhost}

set :stage, :production
set :rails_env, :production

set :deploy_user, "vishal"

server 'localhost', user: 'vishal', roles: %w{web app db}, primary: true

set :ssh_options, {
user: 'vishal',
forward_agent: false,
auth_methods: %w(password),
password: '123456'
}

# set :ssh_options, {
#     keys: %w(/home/ubuntu/amazon.pem),
#     forward_agent: false,
#     auth_methods: %w(publickey)
# }