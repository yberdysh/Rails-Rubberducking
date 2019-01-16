class DucksController < ApplicationController
  before_action :find_ducky, only: [:show, :destroy]
  def index
    @ducks = Duck.all
  end

  def show
    # @duck = Duck.find(params[:id])
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

  def destroy
    # byebug
    @duck.destroy
    redirect_to ducks_path
  end

  def ducky_params
    params.require(:duck).permit(:student_id, :description, :name)
  end

  def find_ducky
    @duck = Duck.find(params[:id])
  end
end
