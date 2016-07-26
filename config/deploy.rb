# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'midasmerchants.co'
set :repo_url, 'git@github.com:afkehaya/sellr.git'
set :deploy_to, '/www/sites/midasmerchants.co'
set :scm, :git
set :format, :pretty
ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

set :log_level, :info

set :keep_releases, 5
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

namespace :deploy do
  task :linkup do
    on roles(:app) do
      within "#{release_path}/config" do
        %w(database secrets application).each do |config_file|
          execute :rm, "-f", "#{config_file}.yml"
          execute :ln, "-s", "#{config_file}.yml-#{fetch(:stage).to_s}", "#{config_file}.yml"
        end
      end
    end
  end
end

before "deploy:assets:precompile", "deploy:linkup"

end
