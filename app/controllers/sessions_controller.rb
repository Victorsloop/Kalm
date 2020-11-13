class SessionsController < ApplicationController
  def logout 
    session.delete(:user_id)
    redirect_to root_path
  end 

  def new
  end 

  def create
    @user = User.find_by(user_name: params[:session][:user_name])

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:login_error] = "Your Username and/or Password is incorrect. Please try again."
      redirect_to login_path
    end
  end 
end