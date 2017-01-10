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

