class UsersController < ApplicationController

  def show
    find_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    find_user
  end

  def update
    find_user
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def find_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end


end
