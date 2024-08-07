source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.4"
gem "rails", "~> 7.0.8", ">= 7.0.8.4"
gem "sprockets-rails"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem 'simple_form'
gem 'country_select'
gem "pry"
gem 'roo'               # For reading Excel files
gem 'caxlsx'            # For writing Excel files (initially name as 'axlsx')
gem 'caxlsx_rails'      # For writing Excel files (initially name as 'axlsx_rails')

group :development, :test do
  gem "sqlite3", "~> 1.4"
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :production do
  gem "pg"
end
