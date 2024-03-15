### rails-items-api

This project is part of a performance test among Sinatra (Ruby), Ruby on Rails, and Go. Here are the Sinatra and Go projects:

- https://github.com/charliemcelfresh/sinatra-items-api
- https://github.com/charliemcelfresh/go-items-api

Set up the current project first, because it creates, migrates, and seeds the database that all three projects use. See below.

Once all three are set up, you can compare their performance by running the Go projects performance testing client. See [here](https://github.com/charliemcelfresh/go-items-api).

#### Run the app

- Make sure you have MySQL installed
- Copy .env.SAMPLE to .env, and make sure you have DB_USER and DB_PASSWORD set correctly
- Run
  - `bundle exec rails db:create`
  - `bundle exec rails db:migrate`
  - `bundle exec rails db:seed`
  - `bundle exec rails s`

Your server should now be running at localhost:3000
