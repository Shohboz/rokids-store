source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'

gem 'rake', '~> 0.9.6'
# Use SCSS for stylesheets
# Add support for the MySQL
group :production, :mysql  do
  gem 'mysql2'
end

group :production, :postgresql do
  gem 'pg'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  #gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  #gem 'web-console', '~> 2.0'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

gem 'sass-rails', '~> 5.0'
# Bootstrap
gem 'bootstrap-sass', '~> 3.3.4'
gem "font-awesome-rails"
gem 'autoprefixer-rails'
# materialize-sass is a Sass powered version of Materialize, a modern responsive front-end framework based on Material Design.
gem 'materialize-sass'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Hirb provides a mini view framework for console applications and uses it to improve ripl(irb)'s default inspect output.
#gem 'hirb'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
#gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
group :doc do
  gem 'sdoc', '~> 0.4.0'
end
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
platforms :jruby, :mingw, :mswin do
  gem 'tzinfo-data'
end