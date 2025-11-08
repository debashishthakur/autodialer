# Autodialer App

A Ruby on Rails application for making automated calls and generating AI-powered blog posts.

## Features

- ✅ Call phone numbers using Twilio
- ✅ Track call status and logs
- ✅ Generate blog posts with Gemini/OpenAI
- ✅ Background job processing with Sidekiq
- ✅ RESTful API
- ✅ SQLite database

## Setup

### Prerequisites
- Ruby 3.4.4
- SQLite3
- Redis

### Local Setup

```bash
git clone https://github.com/debashishthakur/autodialer.git
cd autodialer

# Install dependencies
bundle install

# Setup database
rails db:create db:migrate

# Create .env file
cp .env.example .env

# Start Redis (in a separate terminal)
redis-server

# Start Rails server
rails s

# Start Sidekiq (in another terminal)
bundle exec sidekiq
