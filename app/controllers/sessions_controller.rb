class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:id] = @user.id
      flash[:success] = "You have successfully logged in"
      redirect_to user_path(@user)
    else
      # flash[:error] = "Your username/password do not match any records. Please try again."
      redirect_to login_path
    end
  end

  def logout
    # session[:id] = nil
    session.delete(:id)
    # flash[:success] = "Good Bye"
    redirect_to login_path
  end

end
