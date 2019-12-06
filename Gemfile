source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.3"

gem "rails", "~> 5.2.3"
gem "puma", "~> 3.12"

gem "will_paginate", "3.1.7"
# Use SCSS for stylesheets
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"

gem "carrierwave"
gem "mini_magick"
# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"
# Use ActiveModel has_secure_password
# gem "bcrypt", "~> 3.1.7"

# Use ActiveStorage variant
# gem "mini_magick", "~> 4.8"

# Use Capistrano for deployment
# gem "capistrano-rails", group: :development

# Reduces boot times through caching; required in config/boot.rb

gem "bootsnap", ">= 1.1.0", require: false
gem "jquery-rails", "~> 4.3", ">= 4.3.1"
gem "jquery", "~> 0.0.1"
gem "bcrypt"
gem "config"
gem "faker"
gem "figaro"

gem "cloudinary"
gem "carrierwave"
gem "bootstrap-sass", "3.3.7"
group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "mysql2"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "chromedriver-helper"
end

group :production do
  gem "pg"
  gem "fog-aws"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
