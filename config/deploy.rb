# config valid only for current version of Capistrano
lock "3.9.1"
#default_environment['PATH'] = '/opt/rh/rh-git29/root/usr/bin:/opt/rh/rh-ruby24/root/usr/local/bin:/opt/rh/rh-ruby24/root/usr/bin'
set :application, "rails_basic"
set :repo_url, "git@github.com:SolomonHD/rails-basic"
set :user, "deploy"
set :stages, %w(staging)
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids','tmp/cache','tmp/sockets','vendor/bundle', 'public/system')

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

#set :default_env, {
#    'LD_LIBRARY_PATH' => "/paths/ruby-lib-current:/paths/nodejs-lib-current:$LD_LIBRARY_PATH",
#	'PATH' => "/paths/git-current:/paths/ruby-current:/paths/nodejs-current:/paths/ruby-lib-current:$PATH"
#}

set :default_env, {
    'LD_LIBRARY_PATH' => "/opt/rh/rh-ruby24/root/usr/lib64:/opt/rh/rh-nodejs6/root/usr/lib64:$LD_LIBRARY_PATH",
    'PATH' => "/opt/rh/rh-git29/root/usr/bin:/opt/rh/rh-ruby24/root/usr/local/bin:/opt/rh/rh-ruby24/root/usr/bin:/opt/rh/rh-ruby24/root/usr/lib64:/opt/rh/rh-nodejs6/root/usr/bin:/opt/rh/rh-ruby24/root/usr/local/share/gems/gems:/opt/rh/rh-ruby24/root/usr/local/share/gems/:$PATH"
}
# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5
