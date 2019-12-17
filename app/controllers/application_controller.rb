class ApplicationController < ActionController::Base
    def signin(user)
        new_token = User.create_token
        user.update_attributes(remember_token: new_token)
        cookies.permanent[:remember_token] = new_token
        get_current_user
    end

    def get_current_user
        User.find_by(remember_token: cookies[:remember_token])
    end

    def current_user
        @current_user ||= get_current_user
    end

    def sign_out
        @current_user = nil
        cookies[:remember_token] = nil
    end

    def logged_in?
        !current_user.nil?
    end

    helper_method :current_user
end
