set :application, "ottawaruby.ca"
ssh_options[:port] = 3122
set :project, "ottawaruby"
set :user, "ogre"

default_run_options[:pty] = true
set :repository,  "git@github.com:ryanlowe/ottawaruby.git"
set :scm, "git"
set :branch, "origin/master"

set :deploy_to, "/home/#{user}/rails/#{project}"
set :deploy_via, :remote_cache

# set the user that will start the mongrel instances
set :runner, user

role :app, application
role :web, application
role :db,  application, :primary => true