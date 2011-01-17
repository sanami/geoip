source 'http://rubygems.org'

gem 'sinatra'

gem 'geoip'
#gem 'hpricot', '0.8.2' # 0.8.3 bug
#gem 'nokogiri'
#gem 'mechanize'
gem 'haml'
#gem 'facets' # Conflicts with Rails 3.0.3

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
  gem 'sqlite3-ruby', :require => 'sqlite3'
end

# Heroku
group :production do
  gem 'pg'
end
