# Venue by SuperHi

This project is a small Ruby on Rails project for uploading image bookmarks - styled up with Sass, images hosted on Amazon S3 and site hosted on Heroku

## Features

* View all posts
* View a single post with more detail
* Add a new post
* Edit post
* Delete posts

## What's in a post?

* image <input file>
* title <input>
* body  <textarea>
* when it was created (auto added by rails)
* when it was updated (auto added by rails)

## How to install...

Once you've installed Ruby, Rails and Git using installrails.com, open your terminal and go to a folder of your choic. You can install this project by doing...

* `git clone git@github.com:superhi/venue.git`
* `cd venue`
* `bundle install`
* `rails db:migrate`
* `rails db:seed`
* `rails server`

You can edit the code to fit! The code is fully commented

## Comments

Most of the comments in this projects are in:

* [app/assets/stylesheets](https://github.com/superhi/venue/tree/master/app/assets/stylesheets)
* [app/controllers](https://github.com/superhi/venue/tree/master/app/controllers)
* [app/models](https://github.com/superhi/venue/tree/master/app/models)
* [app/views/posts](https://github.com/superhi/venue/tree/master/app/views/posts)
* [app/views/layout/application.html.erb](https://github.com/superhi/venue/tree/master/app/views/layout/application.html.erb)
* [config/routes.rb](https://github.com/superhi/venue/tree/master/config/routes.rb)
* [Gemfile](https://github.com/superhi/venue/tree/master/Gemfile)

## To set up the secrets

My AWS keys and secrets in the video won't work because of security reasons. To add your own...

* Sign up to Amazon Web Services http://aws.amazon.com/
* Go to IAM and create a new user with a group setting ability to Full S3 settings
* Go to S3 and create a new bucket in the US (N Virgina region)
* Next go to your command line after setup and type in `rails secrets:setup`
* Keep hold of your secret key, the bit after "Adding config/secrets.yml.key to store the encryption key: ....."
* Next, if you're using Atom, type in `EDITOR="atom --wait" rails secrets:edit`
* Add in the following code to that new file and save:

```
development:
  aws_key: REPLACE_WITH_YOUR_AWS_KEY
  aws_secret: REPLACE_WITH_YOUR_AWS_SECRET
  aws_bucket: REPLACE_WITH_YOUR_AWS_S3_BUCKET
  
production:
  aws_key: REPLACE_WITH_YOUR_AWS_KEY
  aws_secret: REPLACE_WITH_YOUR_AWS_SECRET
  aws_bucket: REPLACE_WITH_YOUR_AWS_S3_BUCKET
```

## To get on Heroku

* Sign up for a Heroku account
* Install the Heroku CLI tool
* Run `heroku create` while in your project in your command line
* Commit any changes to git with `git commit -am "YOUR COMMIT MESSAGE"`
* Add your Rails secret key to Heroku by running `heroku config:set RAILS_MASTER_KEY=WHATEVER_YOUR_KEY_IS_IN_THE_ABOVE_STEP`
* Push your code `git push heroku master`
* Update your DB if needed with `heroku run rails db:migrate`


Rik + Team SuperHi
