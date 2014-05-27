source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


gem "paperclip", "~> 2.7"
gem 'activeadmin', github: 'gregbell/active_admin', branch: '0-6-stable'
gem 'acts-as-taggable-on'
gem 'will_paginate', '~> 3.0'
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

gem "rspec-rails", :group => [:test, :development]
group :test do
  gem "factory_girl_rails"
  gem 'capybara'
  gem 'guard-rspec'
  #gem 'sqlite3'
end
group :production do
  gem 'pg'
end

# To use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.5'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
