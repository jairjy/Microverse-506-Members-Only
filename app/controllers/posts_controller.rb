class PostsController < ApplicationController
  # include post_helper

  before_action :logged_in_user, only: [:index, :new]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      flash.now[:error] = 'Error saving the post'
      render 'new'
    end
  end

  def index
  end

  def logged_in_user
    unless logged_in?
      flash[:error] = "Please log in to see this"
      redirect_to login_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end
end
