require 'test_helper'

class BreastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @breast = breasts(:one)
  end

  test "should get index" do
    get breasts_url
    assert_response :success
  end

  test "should get new" do
    get new_breast_url
    assert_response :success
  end

  test "should create breast" do
    assert_difference('Breast.count') do
      post breasts_url, params: { breast: { baby_id: @breast.baby_id, duration: @breast.duration, ftimes: @breast.ftimes, quantify: @breast.quantify } }
    end

    assert_redirected_to breast_url(Breast.last)
  end

  test "should show breast" do
    get breast_url(@breast)
    assert_response :success
  end

  test "should get edit" do
    get edit_breast_url(@breast)
    assert_response :success
  end

  test "should update breast" do
    patch breast_url(@breast), params: { breast: { baby_id: @breast.baby_id, duration: @breast.duration, ftimes: @breast.ftimes, quantify: @breast.quantify } }
    assert_redirected_to breast_url(@breast)
  end

  test "should destroy breast" do
    assert_difference('Breast.count', -1) do
      delete breast_url(@breast)
    end

    assert_redirected_to breasts_url
  end
end
