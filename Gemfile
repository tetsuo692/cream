source 'http://rubygems.org'

gem 'rails', '3.0.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# gem 'sqlite3-ruby', :require => 'sqlite3'



gem 'devise'

#DB
gem 'mongoid', '2.0.0.beta.19'
gem 'bson_ext', '1.1.5'

gem 'inherited_resources', '>= 1.1.2'

#Views
gem 'haml', '= 3.0.18'
gem "haml-rails"
gem 'jquery-rails'
gem 'will_paginate'
gem "formtastic", ">=1.1.0"
gem "compass"

group :development do
  # Use unicorn as the web server
  gem 'unicorn'
end
group :test, :development do
  gem 'factory_girl_rails'
  gem 'ruby-debug' if RUBY_VERSION.include? "1.8"
end

group :test do
  gem 'mongoid-rspec'
  gem 'autotest'
  gem 'ZenTest'
  gem 'growl-glue'
  gem 'rspec-rails', '2.3.1'
  gem 'factory_girl_rails'
  gem 'pickle'
  gem 'capybara'

  gem 'database_cleaner'
  gem 'cucumber', '0.8.5'
  gem 'cucumber-rails'
  gem 'spork'
  gem 'launchy'
  gem 'mocha', :git => 'git://github.com/floehopper/mocha.git'
end
