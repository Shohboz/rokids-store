source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'

group :production, :postgresql do
  gem 'pg'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  #gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # Capistrano
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
  gem 'capistrano-secrets-yml', '~> 1.0.0'
end
# Framework-agnostic XML Sitemap generator written in Ruby with automatic Rails integration.
gem 'sitemap_generator'
# Simple Ruby on Rails plugin for creating meta tags.
gem 'metamagic'
# FriendlyId is the "Swiss Army bulldozer" of slugging and permalink plugins for Active Record. It lets you create pretty URLs and work with human-friendly strings as if they were numeric ids.
gem 'friendly_id', '~> 5.1.0' # Note: You MUST use 5.0.0 or greater for Rails 4.0+
# Babosa is a library for creating human-friendly identifiers, aka "slugs". It can also be useful for normalizing and sanitizing data.
gem 'babosa'
# Intelligent search made easy with Rails and Elasticsearch
gem 'searchkick'
# Gretel is a Ruby on Rails plugin that makes it easy yet flexible to create breadcrumbs.
gem 'gretel'
# This gem provides a simple and extremely flexible way to upload files from Ruby applications.
gem 'carrierwave'
# RMagick is an interface between Ruby and ImageMagick.
gem 'rmagick'
# A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for modern web app frameworks and ORMs
gem 'kaminari'

gem 'sass-rails', '~> 5.0'
# Bootstrap
gem 'bootstrap-sass', '~> 3.3.4'
gem 'font-awesome-rails'
gem 'autoprefixer-rails'
gem 'select2-rails'
# materialize-sass is a Sass powered version of Materialize, a modern responsive front-end framework based on Material Design.
gem 'materialize-sass'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-turbolinks'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Simple, Heroku-friendly Rails app configuration using ENV and a single YAML file
gem 'figaro'

# Hirb provides a mini view framework for console applications and uses it to improve ripl(irb)'s default inspect output.
gem 'hirb'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
#gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
group :doc do
  gem 'sdoc', '~> 0.4.0'
end
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]