# frozen_string_literal: true

class PostsController < ApplicationController
  # include post_helper

  before_action :logged_in_user, only: %i[create new]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @user = current_user
    if @user.posts.build(post_params).save
      redirect_to posts_path
    else
      flash.now[:error] = 'Error saving the post'
      render 'new'
    end
  end

  def index
    @posts = Post.all
  end

  def logged_in_user
    return if logged_in?

    flash[:error] = 'Please log in to see this'
    redirect_to login_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
