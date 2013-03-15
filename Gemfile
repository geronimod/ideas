source 'https://rubygems.org'

gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :production, :staging do
  gem "pg"
end

# authentication system
gem 'devise'

# authorization system
gem 'cancan'

# template engine and styles
gem 'haml-rails'
gem 'font-awesome-rails'
# gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"
gem 'acts-as-taggable-on', '~> 2.3.1'

gem 'jquery-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes

  gem 'uglifier', '>= 1.0.3'
end

group :test, :development do
  # db
  gem 'sqlite3'
  gem 'rake'
  gem 'debugger'
  gem "capybara"
  gem "rspec-rails", "~> 2.0"
  gem "launchy"
  gem "database_cleaner"
  gem "factory_girl"
  gem "capybara-webkit"
end

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
