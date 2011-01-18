require 'bundler'
Bundler.require

require 'app.rb'

#dbconfig = YAML.load(File.read('config/database.yml'))
#ActiveRecord::Base.establish_connection dbconfig['production']

run Sinatra::Application
