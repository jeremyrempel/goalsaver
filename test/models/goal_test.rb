require 'test_helper'

class GoalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
      @goal = Goal.new(name: "One Million", start_value: 1000000, start_date: 2017-01-01,
      end_date: 10.years.from_now, rate_of_return: 0.07, rate_of_savings: 1000, currency: "USD")
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
    @goal.start_value = "   "
    assert_not @goal.valid?
  end

  test "value should be positive number" do
    @goal.start_value = 0
    assert_not @goal.valid?
  end

  test "start date should be present" do
    @goal.start_date = "    "
    assert_not @goal.valid?
  end

  test "rate of return should be present" do
    @goal.rate_of_return = "    "
    assert_not @goal.valid?
  end

  test "rate of return should be positive number" do
    @goal.rate_of_return = 0
    assert_not @goal.valid?
  end

  test "rate of savings should be present and non-negative" do
    @goal.rate_of_savings = -1
    assert_not @goal.valid?
  end

  test "rate of savings can be zero" do
    @goal.rate_of_savings = 0
    assert @goal.valid?
  end

  test "currency cannot be blank" do
    @goal.currency = "   "
    assert_not @goal.valid?
  end

  # length requirements
  test "goal should not be too long" do
    @goal.name = "a" * 51
    assert_not @goal.valid?
  end

  test "currency should be 3" do
    @goal.currency = "a" * 4
    assert_not @goal.valid?
  end

end
