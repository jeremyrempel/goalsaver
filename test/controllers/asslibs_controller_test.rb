require 'test_helper'

class AsslibsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asslib = asslibs(:one)
  end

  test "should get index" do
    get asslibs_url
    assert_response :success
  end

  test "should get new" do
    get new_asslib_url
    assert_response :success
  end

  test "should create asslib" do
    assert_difference('Asslib.count') do
      post asslibs_url, params: { asslib: { active: @asslib.active, currency: @asslib.currency, description: @asslib.description, name: @asslib.name, type: @asslib.type, user_id: @asslib.user_id } }
    end

    assert_redirected_to asslib_url(Asslib.last)
  end

  test "should show asslib" do
    get asslib_url(@asslib)
    assert_response :success
  end

  test "should get edit" do
    get edit_asslib_url(@asslib)
    assert_response :success
  end

  test "should update asslib" do
    patch asslib_url(@asslib), params: { asslib: { active: @asslib.active, currency: @asslib.currency, description: @asslib.description, name: @asslib.name, type: @asslib.type, user_id: @asslib.user_id } }
    assert_redirected_to asslib_url(@asslib)
  end

  test "should destroy asslib" do
    assert_difference('Asslib.count', -1) do
      delete asslib_url(@asslib)
    end

    assert_redirected_to asslibs_url
  end
end
