class PostsController < ApplicationController
  
  def index
    # get all the posts from the database
    @posts = Post.all
  end
  
  def show
    # find a post based on the URL, e.g. /posts/1, so params[:id] is 1
    @post = Post.find(params[:id])
  end
  
  def new
    # this is the new post form, not adding anything just yet, so make a blank post
    @post = Post.new
  end
  
  def create
    # this is actually creating the post based on the new post form's data
    @post = Post.new(form_params)
    @post.save
    redirect_to root_path
  end
  
  def edit
    # just like in show, find based on the url
    # we're not editing just yet, but showing the edit form page
    @post = Post.find(params[:id])
  end
  
  def update
    # okay, this is actually editing, based on the edit form's data
    @post = Post.find(params[:id])
    @post.update(form_params)
    redirect_to post_path(@post)
  end
  
  def destroy
    # again find the post, based on the url, then DESTROY IT
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end
  
  # this is used as a shortcut to allow certain parameters through
  # based on the browser, only require data to do with a post (nothing else!!)
  # then in that data, only allow three fields
  # we use this in both create AND update above, why write it twice when we can write it once?
  def form_params
    params.require(:post).permit(:title, :body, :image)
  end
  
end
