class EmployeesController < ApplicationController
  def staff
    @employee = Employee.last
  end

  def index
    @employees = Employee.all

    if params[:group]
      @employees = Group.find_by(name: params[:group]).employees
      @employees = @employees.where(user_id: current_user.id)
    end


  end

  def show
    @employee = Employee.find(params[:id])
    @full_name = @employee.full_name
    @japan_country_code = @employee.japan_country_code
    @groups = @employee.groups

  end

  def new
  end

  def create
    @employee = Employee.create({first_name: params[:first_name], middle_name: params[:middle_name], last_name: params[:last_name], email: params[:email], job_title: params[:job_title], salary: params[:salary], phone_number: params[:phone_number], gender: params[:gender], bio: params[:bio], user_id: current_user.id})

    flash[:success] = "New Employee Created!"
    redirect_to "/employees"
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])

    @employee.update({first_name: params[:first_name], middle_name: params[:middle_name], last_name: params[:last_name], email: params[:email], job_title: params[:job_title], salary: params[:salary], phone_number: params[:phone_number], gender: params[:gender], bio: params[:bio]})

    flash[:success] = "Employee Updated!"
    redirect_to "/employees/#{@employee.id}"

  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy

    flash[:success] = "Employee was successfully destroyed"
    flash[:warning] = "Employee Destroyed!"
    redirect_to "/employees"
  end

  def search
    Group.where("name LIKE ?", "%#{params[:search]}%").first

    render :index
  end

end
