source 'https://rubygems.org'

ruby "1.9.3"
gem 'rails', '3.2.16'
gem 'bootstrap-sass', '2.1'
gem "watu_table_builder", :require => "table_builder", :git => "git://github.com/watu/table_builder.git"
gem 'bcrypt-ruby', '3.0.1'
gem 'will_paginate', '3.0.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'sqlite3', '1.3.5'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.5'
  gem 'coffee-rails', '3.2.2'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '1.2.3'
   gem 'jquery-ui-rails'
end

gem 'jquery-rails'
gem 'jquery_datepicker', '~> 0.4'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :production do
  gem 'pg', '0.12.2'
  gem 'rails_12factor', '0.0.2'
end
