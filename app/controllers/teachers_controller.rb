class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :destroy]

  def new
    @teacher = Teacher.new
    @teacher.build_user
  end

  def show
  end

  def create
    @teacher = Teacher.create(teacher_params)
  end

  def destroy
    @teacher.destroy
    redirect_to sessions_new_path
  end

  private

  def teacher_params
    params.require(:teacher).permit(:user_id, user_attributes: [:name, :login, :password, :password_confirmation])
  end

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end
end
