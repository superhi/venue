class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(form_params)
    @post.save
    redirect_to root_path
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    @post.update(form_params)
    redirect_to post_path(@post)
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end
  
  
  def form_params
    params.require(:post).permit(:title, :body, :image)
  end
  
  
end
