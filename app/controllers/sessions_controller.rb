class SessionsController < ApplicationController
  def new
    :session
  end

  def create
    @user = User.find_by(login: user_params[:login])
    if @user && @user.authenticate(user_params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(id: @user.id)
    else
      render :new
    end
  end

  def destroy
     session[:user_id] = nil if current_user
     redirect_to sessions_new_path
  end

  private

  def user_params
    params.require(:session).permit(:login, :password)
  end
end
