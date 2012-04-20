source 'https://rubygems.org'

gem 'jquery-rails'
gem 'mysql2'
gem 'rails',          '3.2.1'
gem 'sqlite3'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier',     '>= 1.0.3'
end

group :development do
  gem "booking_system", :path => "../booking_system_gem"
  gem 'rails_admin'
  gem 'ruby-debug19',   :require => 'ruby-debug'
  gem 'thin'
end

group :production do
  # gem "booking_system", :git => "git://github.com/wilde4/booking_system_gem.git"
end

group :test do
  gem "rspec-rails"
  gem "cucumber-rails"
end