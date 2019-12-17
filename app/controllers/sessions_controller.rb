class SessionsController < ApplicationController
  def new
    @session
  end
  def create
    @user = User.find_by(email: params[:session][:email].downcase)

    if @user&.authenticate(params[:session][:password])
      signin(@user)
      redirect_to @user
    else
      flash.now[:error] = "Incorrect email or password"
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to login_path
  end
end
