source 'http://rubygems.org'

gem 'rails', '3.0.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# gem 'sqlite3-ruby', :require => 'sqlite3'

# Use unicorn as the web server
gem 'unicorn'

gem 'devise'

#DB
gem "mongoid", "2.0.0.beta.17"
gem "bson_ext", "1.0.4"

gem 'inherited_resources', '1.1.2'

#Views
gem 'haml'
gem "haml-rails"
gem 'jquery-rails'
gem 'will_paginate'
gem "formtastic", ">=1.1.0"
gem "compass"

group :test, :development do
  gem 'factory_girl_rails'
  gem 'ruby-debug' if RUBY_VERSION.include? "1.8"
end

group :test do
  gem 'capybara', '~> 0.3.9'
  gem 'cucumber-rails', '0.3.2'
  gem 'rspec', '>= 2.0.0'
  gem 'rspec-rails', '>= 2.0.0'
  gem 'mocha'
  gem 'database_cleaner'
  gem 'webmock'
end
