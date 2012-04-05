source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'sqlite3'
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'cucumber-rails-training-wheels'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'simplecov'
  gem "ZenTest", "~> 4.7.0"
  gem "autotest-rails", "~> 4.1.2"
end
group :test do
  gem 'cucumber-rails'
  gem 'selenium-webdriver', "~> 2.20.0"
  gem 'factory_girl', "~> 3.0.0"
  # Pretty printed test output
  gem 'turn', :require => false
end
group :production do
  gem 'pg'
  gem 'thin'
end




# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'therubyracer'
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

gem 'haml'
