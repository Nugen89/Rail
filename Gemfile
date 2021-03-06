source 'https://rubygems.org'

ruby "2.0.0"

gem 'sidekiq'
gem 'sidekiq-status'
gem 'sinatra', require: false
gem 'slim', '>= 1.1.0'
gem 'autoscaler'

gem "mandrill-api", "~> 1.0.37"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
group :assets do
  gem 'sass-rails', '~> 4.0.0'
  gem 'bourbon'
	gem 'neat'
end

# Forms
gem 'simple_form'
gem 'country_select'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
	gem 'activerecord-nulldb-adapter', :git => 'git://github.com/nulldb/nulldb.git'
end

group :test do
	gem "faker"
end

gem 'haml', '~> 4.0.3'
gem 'haml-rails'

gem "rspec", :group => [:development, :test]
gem "rspec-rails", ">= 2.12.2", :group => [:development, :test]

gem "cucumber-rails", ">= 1.3.0", :group => :test, :require => false
gem "factory_girl_rails", ">= 4.2.0", :group => [:development, :test]
gem "better_errors", ">= 0.3.2", :group => :development

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]


group :production do
	gem 'rails_12factor'
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
end


# RAILS_ENV=production bundle exec rake assets:precompile