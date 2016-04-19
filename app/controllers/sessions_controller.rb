class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(login: user_params[:login])
    if @user && @user.authenticate(user_params[:password])
      session[:user_id] = @user.id
      redirect_to user_path
    else
      render :new
    end
  end

  def destroy
  end

  private

  def user_params
    params.permit(:login, :password)
  end
end
