class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(student_params)
  end

  def update

  end

  def delete

  end

  private

  def student_params
    params.require(:student).permit(:teacher_id, :user_id, user_attributes: [:name, :login, :password, :password_confirmation])
  end
end
