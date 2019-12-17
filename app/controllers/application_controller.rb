class ApplicationController < ActionController::Base
    def signin(user)
        new_token = User.create_token
        user.remember_token = new_token
        cookies.permanent[:remember_token] = new_token
        get_current_user
    end

    def current_user
        User.find_by(remember_token: cookies[:remember_token])
    end

    def get_current_user
        @current_user ||= current_user
    end
end
