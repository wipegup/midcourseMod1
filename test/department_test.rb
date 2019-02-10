require 'minitest/autorun'
require './lib/department'
require './lib/employee'

class DepartmentTest < MiniTest::Test
  def setup
    @department = Department.new("Customer Service")
    @bobbi = Employee.new({name: "Bobbi Jaeger",
                           age: "30",
                           salary: "100000"})
    @aaron = Employee.new({name: "Aaron Tanaka",
                           age: "25",
                           salary: "90000"})
  end

  def test_it_exists
    assert_instance_of Department, @department
  end

  def test_it_has_attributes
    assert_equal "Customer Service", @department.name
    assert_equal [], @department.employees
    assert_equal 0, @department.expenses
  end

  def test_hire_adds_employees_to_employee_array
    @department.hire(@bobbi)
    @department.hire(@aaron)

    assert_equal [@bobbi, @aaron], @department.employees
  end

  def test_expense_increments_expenses
    @department.expense(100)
    @department.expense(25)

    assert_equal 125, @department.expenses
  end
end
