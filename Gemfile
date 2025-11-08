source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.4.4"

gem "rails", "~> 7.1.0"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 6.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", "~> 5.0"
gem "bcrypt", "~> 3.1.7"
gem "image_processing", "~> 1.2"
gem "aws-sdk-s3", require: false

# Twilio for voice calls
gem "twilio-ruby"

# AI APIs
gem "ruby-openai", require: "openai"
gem "gemini-ai"

# Background jobs
gem "sidekiq", "~> 7.1"

# UI & Frontend
gem "bootstrap", "~> 5.3.0"
gem "sprockets-rails"
gem "sassc-rails"


# Environment variables
gem "dotenv-rails"

# Pagination
gem "kaminari"

# CORS
gem "rack-cors"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails"
  gem "factory_bot_rails"
end

group :development do
  gem "web-console"
end
