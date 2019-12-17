class ApplicationController < ActionController::Base
    def signin(user)
        new_token = User.create_token
        user.remember_token = new_token
        cookies.permanent[:remember_token] = new_token
    end
end
