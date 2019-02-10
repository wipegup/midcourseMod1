require 'minitest/autorun'
require './lib/employee'
class EmployeeTest < MiniTest::Test
  def setup

    @employee = Employee.new({name:"Bobbi Jaeger",
                              age: "30",
                              salary: "100000"})
  end

  
end
