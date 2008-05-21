set :application, "ogre.infonium.ca:3122"
set :project, "ogre"
set :user, "ogre"

default_run_options[:pty] = true
set :repository,  "git@github.com:ryanlowe/ogre.git"
set :scm, "git"
set :branch, "origin/master"
#set :scm_passphrase, "p00p" #This is your custom users password

set :deploy_to, "/home/#{user}/rails/#{project}"
set :deploy_via, :remote_cache

# set the user that will start the mongrel instances
set :runner, user

role :app, application
role :web, application
role :db,  application, :primary => true