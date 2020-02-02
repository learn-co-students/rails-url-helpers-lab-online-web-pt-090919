class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    if @student.active
      @status = "active"
    else
      @status = "inactive"
    end
  end
  
  def activate_student
    binding.pry
    @student = Student.find(params[:id])
    if @student.active
      @student.active = false
    else
      @student.active = true
    end
    binding.pry
    @student.save
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end