# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def signin(user)
    new_token = User.create_token
    user.update_attributes(remember_token: new_token)
    cookies.permanent[:remember_token] = new_token
    @current_user = user
  end

  def retrive_user
    if cookies[:remember_token]
      User.find_by(remember_token: cookies[:remember_token])
    else
      @current_user = nil
    end
  end

  def current_user
    @current_user ||= retrive_user
  end

  def sign_out
    @current_user = nil
    cookies.delete(:remember_token)
  end

  def logged_in?
    !current_user.nil?
  end

  helper_method :current_user
end
