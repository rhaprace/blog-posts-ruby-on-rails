# Rails Blog with Scheduled Publishing

A simple, clean blog application built with Ruby on Rails featuring scheduled post publishing.

## Features

- **Index Page** - Lists all published blog posts
- **Show Page** - Displays individual post content
- **Create Posts** - Form to create new blog posts
- **Edit Posts** - Update existing posts
- **Delete Posts** - Remove posts with confirmation
- **Scheduled Publishing** - Posts can be scheduled to publish at a future date/time

## Scheduled Publishing

Posts with a `publish_at` time in the future are automatically hidden from the index page and cannot be accessed directly. Once the scheduled time arrives, posts become visible automatically.

**Implementation:**
- Database-level filtering using ActiveRecord scopes
- No background jobs required
- Uses `Time.current` for timezone-aware comparisons

```ruby
scope :published, -> { where("publish_at <= ?", Time.current) }
scope :scheduled, -> { where("publish_at > ?", Time.current) }
```

## Tech Stack

- Ruby on Rails 8.1
- SQLite3
- Turbo Rails
- Propshaft

## Setup

```bash
# Install dependencies
bundle install

# Create and migrate database
rails db:create db:migrate

# Seed sample data (optional)
rails db:seed

# Start server
rails server
```

Visit `http://localhost:3000`

## Database Schema

**Posts Table:**
- `title` (string) - Post title
- `content` (text) - Post content
- `publish_at` (datetime) - Scheduled publish time

## Configuration

Timezone is set to `Asia/Manila` in `config/application.rb`

## Code Philosophy

Clean, self-documenting code without unnecessary comments. Method names and structure clearly convey intent.
