source 'https://rubygems.org'

# will_paginate is a gem that helps present multiple post on sub-pages
gem 'will_paginate', '~> 3.0.5'
# Carrierwave is a gem to allow users to upload images
gem 'carrierwave'
# Fog initializer helps support Amazons S3 file storage.
gem 'fog'
# MiniMagick is a way to adjust image sizing
gem 'mini_magick'
# Redcarpet is a markdown library
gem 'redcarpet'
# Bootstrap-sass for CSS
gem 'bootstrap-sass'
# Figaro gem allows you to safely store and access sensitive credentials using variables.
gem 'figaro'
# The Devise gem authenticates users
gem 'devise'
# The pundit is a gem that makes it easier to authorize different users for different tasks in your app.
gem 'pundit'
# The faker Gem
gem 'faker'
# Pry shell which adds many extra features that aren't available using the IRB shell.
gem 'pry-rails'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
group :production do
   gem 'pg'
   gem 'rails_12factor'
 end
 
 group :development do
   gem 'sqlite3'
   gem 'annotate'
 end
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'factory_girl_rails', '~> 4.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'capybara'
  #RSpec is used to quickly check for bugs in your code
  gem 'rspec-rails', '~> 3.0'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

