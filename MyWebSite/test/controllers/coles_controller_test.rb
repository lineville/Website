require 'test_helper'

class ColesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cole = coles(:one)
  end

  test "should get index" do
    get coles_url
    assert_response :success
  end

  test "should get new" do
    get new_cole_url
    assert_response :success
  end

  test "should create cole" do
    assert_difference('Cole.count') do
      post coles_url, params: { cole: {  } }
    end

    assert_redirected_to cole_url(Cole.last)
  end

  test "should show cole" do
    get cole_url(@cole)
    assert_response :success
  end

  test "should get edit" do
    get edit_cole_url(@cole)
    assert_response :success
  end

  test "should update cole" do
    patch cole_url(@cole), params: { cole: {  } }
    assert_redirected_to cole_url(@cole)
  end

  test "should destroy cole" do
    assert_difference('Cole.count', -1) do
      delete cole_url(@cole)
    end

    assert_redirected_to coles_url
  end
end
