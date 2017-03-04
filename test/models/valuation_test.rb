require 'test_helper'

class ValuationTest < ActiveSupport::TestCase

  def setup
    user = User.new(fname: "Test", lname: "User", email: "testuser@test.com", password: "password")
    asslib = Asslib.new(user: user, name: "Home", description: "My Home Test", altype: :asset, active: true, currency: "USD")
    @val = Valuation.new(user: user, asslib: asslib, date: DateTime.now, value: 1000)
  end

  test "should belong to user" do
    t = Valuation.reflect_on_association(:user)
    assert t.macro == :belongs_to
    assert t.name == :user
  end

  test "should belong to asslib" do
    t = Valuation.reflect_on_association(:asslib)
    assert t.macro == :belongs_to
    assert t.name == :asslib
  end

  test "valuation should be valid" do
    assert @val.valid?, @val.errors.full_messages.inspect
  end

  test "user is required" do
    @val.user = nil
    assert_not @val.valid?
  end

  test "asslib is required" do
    @val.asslib = nil
    assert_not @val.valid?
  end

  test "date is required" do
    @val.date = nil
    assert_not @val.valid?
  end

  test "valuation is required" do
    @val.value = nil
    assert_not @val.valid?
  end

  test "validation must be >0" do
    @val.value = 0
    assert_not @val.valid?
  end

end
