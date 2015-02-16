# Chitter: Twitter-Clone

This challenge was set by Makers Academy as a weekend challenge after being introduced to database web apps in Ruby using Sinatra.

## Features include:

* Signing up
* Logging in
* Logging out
* Posting a message to chitter
* Viewing all messages in chronological order

## Notes:

* Makers sign up to chitter with their email, password, name and a user name
* Username and email are unique.
* Messages have the name of the maker and their user handle.
* Uses bcrypt to secure the passwords.
* Uses data mapper and postgres to save the data.
* You don't have to be logged in to see the messages.
* You only can post if you are logged in.

## Technologies used:

* Ruby
* Sinatra
* HTML5
* CSS3
* RSpec
* Capybara
* BCrypt
* PostgreSQL
* DataMapper

## How to run tests:

```sh
$ git clone https://github.com/imarkwick/chitter.git
$ cd chitter
$ bundle install
$ rspec
```

## How to run the server:

```sh
$ git clone https://github.com/imarkwick/chitter.git
$ cd chitter
$ bundle install
$ rackup
```