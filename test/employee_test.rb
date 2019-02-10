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

end
