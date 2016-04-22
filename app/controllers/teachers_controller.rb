class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
    @teacher.build_user
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def create
    @teacher = Teacher.create(teacher_params)
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to sessions_new_path
  end

  private

  def teacher_params
    params.require(:teacher).permit(:user_id, user_attributes: [:name, :login, :password, :password_confirmation])
  end
end
