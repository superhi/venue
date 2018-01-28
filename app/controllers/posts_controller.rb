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
  
  def form_params
    params.require(:post).permit(:title, :body, :image)
  end
  
  
end
