# config valid only for current version of Capistrano
lock "3.4.0"

set :application, "cap"
set :repo_url, "git@github.com:benubois/#{fetch(:application)}.git"

# Default branch is :master
# set :branch, "master"

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/#{fetch(:application)}"

namespace :deploy do

  after :finishing, :remove_deploy do
    on roles(:web) do
      execute "cd #{release_path} && rm -Rf .deploy"
    end
  end

end
