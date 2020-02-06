require 'test_helper'

class ContrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contr = contrs(:one)
  end

  test "should get index" do
    get contrs_url
    assert_response :success
  end

  test "should get new" do
    get new_contr_url
    assert_response :success
  end

  test "should create contr" do
    assert_difference('Contr.count') do
      post contrs_url, params: { contr: { a1: @contr.a1, a2: @contr.a2 } }
    end

    assert_redirected_to contr_url(Contr.last)
  end

  test "should show contr" do
    get contr_url(@contr)
    assert_response :success
  end

  test "should get edit" do
    get edit_contr_url(@contr)
    assert_response :success
  end

  test "should update contr" do
    patch contr_url(@contr), params: { contr: { a1: @contr.a1, a2: @contr.a2 } }
    assert_redirected_to contr_url(@contr)
  end

  test "should destroy contr" do
    assert_difference('Contr.count', -1) do
      delete contr_url(@contr)
    end

    assert_redirected_to contrs_url
  end
end
