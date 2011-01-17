require 'sinatra'
#require 'active_record'
require 'geoip'

require 'app'

dbconfig = YAML.load(File.read('config/database.yml'))
ActiveRecord::Base.establish_connection dbconfig['production']

run Sinatra::Application
