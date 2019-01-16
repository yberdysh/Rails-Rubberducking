class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def show
    # @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path
    else
      flash[:errors] = @student.errors.full_messages
      render 'new'
    end
  end

  def edit

  end

  def update
    if @student.update(student_params)
      redirect_to student_path(@student)
    else
      flash[:errors] = @student.errors.full_messages
      render :edit
    end
  end


  private

  def student_params
    params.require(:student).permit(:name, :mod)
  end

  def set_student
    @student = Student.find(params[:id])
  end

end
