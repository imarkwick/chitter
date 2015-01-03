# Chitter: Twitter-Clone

This challenge was set by Makers Academy as a weekend challenge after being introduced to database web apps in Ruby using Sinatra.

The twitter app must allow users to post messages to a public stream.

# Features include:

* Signing up
* Logging in
* Logging out
* Posting a message to chitter
* Viewing all messages in chronological order

# Notes:

* Makers sign up to chitter with their email, password, name and a user name
* The username and email are unique.
* Messages have the name of the maker and their user handle.
* Uses bcrypt to secure the passwords.
* Uses data mapper and postgres to save the data.
* You don't have to be logged in to see the messages.
* You only can post if you are logged in.

To view tests, run;

```sh
$ rspec
```

To play on Simon Says in the browser start the server and visit localhost/9292;

```sh
$ rackup
```