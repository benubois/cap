# config valid only for current version of Capistrano
lock "3.4.0"

set :application, "cap"
set :repo_url, "git@github.com:benubois/#{fetch(:application)}.git"

# Default branch is :master
# set :branch, "master"

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/#{fetch(:application)}"

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, "cache:clear"
      # end
    end
  end

end
