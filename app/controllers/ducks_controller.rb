class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def show
    @duck = Duck.find(params[:id])
  end

  def new
    @duck = Duck.new
    @students = Student.all
  end

  def create
    @duck = Duck.new(ducky_params)
    @students = Student.all
    if @duck.save
      redirect_to duck_path(@duck)
    else
      flash[:errors] = @duck.errors.full_messages
      render "new"
    end
  end

  def ducky_params
    params.require(:duck).permit(:student_id, :description, :name)
  end
end
