class UsersController < ApplicationController
  before_action :set_user, only: [ :show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def show
  end

  def edit
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
    @user.update(user_params)
    redirect_to user_path(id: @user.id)
  end

  def destroy
    @user.destroy
    redirect_to new_user_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :login, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
