class DepartmentsController < ApplicationController

  def index
    @departments = Departments.all
  end

  def show
    @department = Department.find(params[:id])
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.new(departments_params)
    if @department.save
      redirect_to 
  end


  def edit
    @department = Department.find(params[:id])
  end

  def update
  end

  def destroy
  end

end
