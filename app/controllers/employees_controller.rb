class EmployeesController < ApplicationController
  def staff
    @employee = Employee.last
  end

  def all_staff
    @employees = Employee.all
  end

end
