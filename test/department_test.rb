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

  def test_it_has_name
    assert_equal "Customer Service", @department.name
  end
end
