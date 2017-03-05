require 'test_helper'

class ValuationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @valuation = valuations(:one)
  end

  test "should get index" do
    get valuations_url
    assert_response :success
  end

  test "should get new" do
    get new_valuation_url
    assert_response :success
  end

  test "should create valuation" do
    assert_difference('Valuation.count') do
      post valuations_url, params: { valuation: { asslib_id: @valuation.asslib_id, period: @valuation.period, user_id: @valuation.user_id, value: @valuation.value, year: @valuation.year } }
    end

    assert_redirected_to valuation_url(Valuation.last)
  end

  test "should show valuation" do
    get valuation_url(@valuation)
    assert_response :success
  end

  test "should get edit" do
    get edit_valuation_url(@valuation)
    assert_response :success
  end

  test "should update valuation" do
    patch valuation_url(@valuation), params: { valuation: { asslib_id: @valuation.asslib_id, period: @valuation.period, user_id: @valuation.user_id, value: @valuation.value, year: @valuation.year } }
    assert_redirected_to valuation_url(@valuation)
  end

  test "should destroy valuation" do
    assert_difference('Valuation.count', -1) do
      delete valuation_url(@valuation)
    end

    assert_redirected_to valuations_url
  end
end
