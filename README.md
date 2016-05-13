# bs-layout-boilerplate-rails
Rails application boilerplate using [Bootstrap Layout](https://github.com/themekit/bootstrap-layout).

### Demo
> You can [see a working live demo](https://bootstrap-layout-rails.herokuapp.com) of this boilerplate running on Heroku.

## Usage
#### Clone the boilerplate repository
```bash
git clone https://github.com/themekit/bs-layout-boilerplate-rails.git my-project
```
```bash
cd my-project
```

#### Asset dependencies
```bash
npm install
```

#### Rails dependencies
> This application boilerplate runs on Rails `2.3.1`. We recommend installing [rvm (Ruby Version Manager)](https://rvm.io) and then install ruby:

```bash
rvm --force install 2.3.1
rvm --default use 2.3.1
```

> Install Bundler and Rails:

```bash
gem install bundle
gem install rails
```

> Install the application dependencies:

```bash
bundle install
```

#### Development server
> Start rails server on `http://localhost:3000`:

```bash
rails s
```

#### Production mode
> Precompiling assets:

```bash
RAILS_ENV=production bin/rake assets:precompile
```

> Start rails server in production:

```bash
rails s -e production
```

---

## Files of interest
> The complete list of files modified or created in addition to the default Rails installation.

```
├── .env
├── Gemfile
├── Procfile
├── app
│   ├── assets
│   │   ├── javascripts
│   │   │   └── application.js
│   │   └── stylesheets
│   │       └── application.css.scss
│   ├── controllers
│   │   └── static_controller.rb
│   └── views
│       ├── layouts
│       │   ├── application.html.erb
│       │   └── fixed.html.erb
│       └── static
│           └── content.html.erb
├── config
│   ├── application.rb
│   ├── environments
│   │   ├── development.rb
│   │   └── production.rb
│   └── routes.rb
└── package.json
```

## Database
For the purpose of this application boilerplate, we intentionally disabled the database connection.

#### Install database driver

> To use the default Rails database connection, uncomment the following from the `Gemfile`:

```ruby
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
```

> Install the gem:

```bash
bundle install
```

#### Enable Active Record

> Uncomment the following in `config/application.rb`:

```ruby
require "active_record/railtie"

# Do not swallow errors in after_commit/after_rollback callbacks.
config.active_record.raise_in_transactional_callbacks = true
```

> Uncomment the following in `config/environments/development.rb`:

```ruby
# Raise an error on page load if there are pending migrations.
config.active_record.migration_error = :page_load
```

> Uncomment the following in `config/environments/production.rb`:

```ruby
# Do not dump schema after migrations.
config.active_record.dump_schema_after_migration = false
```

---

## Running the Rails app on Heroku
> First, get a free Heroku Account and download the [Heroku Toolbelt](https://toolbelt.heroku.com). Then, login to Heroku:

```bash
heroku login
```

> From the project root directory, create a Heroku app. Note that Heroku generates a random name for your app or you can pass parameter to specify your own app name.

```bash
heroku create
```

#### Buildpacks
> Configure the Heroku app to use the official Ruby buildpack:

```bash
heroku buildpacks:set heroku/ruby
```

> Add the Node.js buildback at the first position, to ensure `npm install` runs first:

```bash
heroku buildpacks:add --index 1 heroku/nodejs
```

#### Production mode
> Configure the Heroku app to use the production mode:

```bash
heroku config:set RACK_ENV=production
```

#### Database
> Note that `sqlite3` will NOT work on Heroku. See details and alternatives on [https://devcenter.heroku.com/articles/sqlite3](https://devcenter.heroku.com/articles/sqlite3)

#### Local development
> To run the Heroku app on `http://localhost:5000`, run:

```bash
heroku local
```

#### Deploy
> When you created the app with `heroku create`, a git remote (called `heroku`) was also created and associated with your local git repository. To publish the application, you simply have to push to that remote:

```bash
git push heroku master
```

> Ensure at least one instance of the application is running:

```bash
heroku ps:scale web=1
```

Visit `http://<APP NAME>.herokuapp.com` in your browser to see the Rails app running.

---

## Get help
Get help directly from our team via our Slack channel. [Request invite](http://themekit-slack-invite.stamplayapp.com/)