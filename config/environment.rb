# Load the rails application
require File.expand_path('../application', __FILE__)

Haml::Template.options[:format] = :html5
Haml::Template.options[:escape_html] = true

# Initialize the rails application
Cream::Application.initialize!
