require 'test_helper'

class AsslibTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    user = User.new(fname: "Test", lname: "User", email: "testuser@test.com", password: "password")
    @asslib = Asslib.new(user: user, name: "Home", description: "My Home Test", altype: :asset, active: true, currency: "USD")
  end

  test "should belong to user" do
    t = Asslib.reflect_on_association(:user)
    assert t.macro == :belongs_to
    assert t.name == :user
  end

  test "asslib should be valid" do
    assert @asslib.valid?, @asslib.errors.full_messages.inspect
  end

  test "asslib should have a type" do
    @asslib.altype = " "
    assert_not @asslib.valid?
  end

  test "asslib can only be asset or liability" do
    assert_raises(Exception) { @asslib.altype = "z" }
  end

  test "asslib must be true,false" do
    @asslib.active = nil
    assert_not @asslib.valid?
  end

  test "currency is required" do
    @asslib.currency = " "
    assert_not @asslib.valid?
  end

  # length requirements
  test "goal should not be too long" do
    @asslib.name = "a" * 51
    assert_not @asslib.valid?
  end

end
