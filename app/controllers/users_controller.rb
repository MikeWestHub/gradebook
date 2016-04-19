class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(id: @user.id)
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(id: @user.id)
  end

  def destroy
    @user = User.find(params[:id]).destroy
    redirect_to new_user_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :login, :password, :password_confirmation)
  end
end
