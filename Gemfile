source 'https://rubygems.org'

gem 'sinatra', '2.0.0.beta2'
gem 'json'
gem 'oauth'

gem 'rails'
gem 'arel'
gem 'sqlite3'

group :development, :test do
  gem 'pry'
end

group :production do
  gem 'ey_config'
  gem 'newrelic_rpm'
end

group :app_servers do
  gem 'puma'
  gem 'passenger'
  gem 'passenger-rails'
  gem 'rhebok'
  platforms :ruby, :rbx do
    gem 'unicorn'
    gem 'unicorn-rails'
    gem 'thin'
  end
end
