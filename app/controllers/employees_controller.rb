class EmployeesController < ApplicationController
  def staff
    @employee = Employee.last
  end

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
  end

  def create
    @employee = Employee.create({first_name: params[:first_name], last_name: params[:last_name], email: params[:email], job_title: params[:job_title], salary: params[:salary], phone_number: params[:phone_number], gender: params[:gender]})
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])

    @employee.update({first_name: params[:first_name], last_name: params[:last_name], email: params[:email], job_title: params[:job_title], salary: params[:salary], phone_number: params[:phone_number], gender: params[:gender]})
  end

end
