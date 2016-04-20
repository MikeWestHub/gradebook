class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def create
  end

  def destroy
  end
end
