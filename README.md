# README

# 🎉 Eventbrite

A Rails application for creating and managing local events.

## 📋 Features

- User authentication (Devise)
- Create, edit, and delete events
- View all events on homepage
- User profile with created events
- Authorization controls (only event creators can edit/delete)

## 🛠️ Tech Stack

- **Ruby**: 3.2.2
- **Rails**: 7.2.x
- **Database**: PostgreSQL
- **Authentication**: Devise
- **Frontend**: Bootstrap 5

## 🚀 Installation

```bash
# Install dependencies
bundle install

# Setup database
rails db:create
rails db:migrate
rails db:seed

# Start server
rails server
```

Visit `http://localhost:3000`

## 🗄️ Database Schema

**User**
- `first_name`, `last_name`, `description`, `email`, `encrypted_password`

**Event**
- `title`, `description`, `start_date`, `duration`, `price`, `location`
- `user_id` (references User)

**Attendance** (upcoming)
- `user_id`, `event_id`

## 🔐 Test Accounts

After running `rails db:seed`:

- **User 1**: jobee@yopmail.com / jobee123
- **User 2**: croquette@yopmail.com / croquette123

## 📝 Main Routes

| Route | Action | Description |
|-------|--------|-------------|
| `/` | `events#index` | Homepage (event list) |
| `/events/new` | `events#new` | Create event |
| `/events/:id` | `events#show` | Event details |
| `/users/:id` | `users#show` | User profile |
| `/users/sign_up` | `registrations#new` | Sign up |
| `/users/sign_in` | `sessions#new` | Sign in |

## 🚧 Upcoming Features

- [ ] Event participation system (Attendances)
- [ ] Search and filters
- [ ] Image uploads
- [ ] Pagination
- [ ] Notifications

## 👥 Authors

Built as part of **The Hacking Project** - Week 7

