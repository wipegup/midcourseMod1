require 'minitest/autorun'
require './lib/employee'
class EmployeeTest < MiniTest::Test
  def setup
    @employee = Employee.new({name:"Bobbi Jaeger",
                              age: "30",
                              salary: "100000"})
  end

  def test_it_exists
    assert_instance_of Employee, @employee
  end

  def test_it_has_attributes
    assert_equal "Bobbi Jaeger", @employee.name
    assert_equal 30, @employee.age
    assert_equal 100000, @employee.salary
  end
end
