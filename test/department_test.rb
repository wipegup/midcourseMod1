require 'minitest/autorun'
require './lib/department'
require './lib/employee'

class DepartmentTest < MiniTest::Test
  def setup
    @department = Department.new("Customer Service")
  end

  def test_it_exists
    assert_instance_of Department, @department
  end
end
