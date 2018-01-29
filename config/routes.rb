# this file sets up all the URLs for our site (or "routes")
Rails.application.routes.draw do
  # resources set up the 7 default actions in Rails:
  # index (list all posts)
  # show (just one individual post)
  # new (new post form)
  # create (actually create the post in the db)
  # edit (edit post form)
  # update (actually update the post in the db)
  # destroy (get rid of the post in the db)
  resources :posts
  
  # root is the homepage, we're telling it to look at the posts controller, to the index action
  root to: "posts#index"
end
