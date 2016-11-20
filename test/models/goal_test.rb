require 'test_helper'

class GoalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
      @goal = Goal.new(name: "One Million", value: 1000000)
  end

  # check required fields
  test "should be valid" do
    assert @goal.valid?
  end

  test "name should be present" do
    @goal.name = "    "
    assert_not @goal.valid?
  end

  test "value should be present" do
    @goal.value = "   "
    assert_not @goal.valid?
  end

  test "value should be positive number" do
    @goal.value = "0"
    assert_not @goal.valid?
  end

  # length requirements
  test "goal should not be too long" do
    @goal.name = "a" * 51
    assert_not @goal.valid?
  end

end
