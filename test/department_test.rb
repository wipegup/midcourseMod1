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

  def test_it_has_name
    assert_equal "Customer Service", @department.name
  end

  def test_employees_starts_empty
    assert_equal [], @department.employees
  end
end
