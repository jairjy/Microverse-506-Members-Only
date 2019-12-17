class PostsController < ApplicationController
  # include post_helper

  before_action :logged_in_user, only: [:edit, :index, :new]

  def new
    @post = Post.new
  end

  def create
  end

  def index
  end

  def logged_in_user
    unless logged_in?
      flash[:error] = "Please log in to see this"
      redirect_to login_path
    end
  end
end
