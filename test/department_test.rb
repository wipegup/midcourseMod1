require 'minitest/autorun'
require './lib/department'
require './lib/employee'

class DepartmentTest < MiniTest::Test
  def setup

    @department = Department.new("Customer Service")
  end

  
end
