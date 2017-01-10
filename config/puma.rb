# Change to match your CPU core count
workers 8

# Min and Max threads per worker
threads 16,64

environment "production"
worker_timeout 120

app_dir = File.expand_path("../..", __FILE__)
APP_ROOT = app_dir
APP_NAME = "sithfighters"

bind  "unix://#{APP_ROOT}/tmp/sockets/#{APP_NAME}.sock"
stdout_redirect "#{APP_ROOT}/log/puma.access.log","#{APP_ROOT}/log/puma.error.log"
pidfile "#{APP_ROOT}/tmp/pids/#{APP_NAME}.pid"
state_path "#{APP_ROOT}/tmp/pids/#{APP_NAME}.state"
daemonize true
preload_app!
