require 'test_helper'

class AccountActivationsControllerTest < ActionDispatch::IntegrationTest
  test "should get Runnibg" do
    get account_activations_Runnibg_url
    assert_response :success
  end

  test "should get via" do
    get account_activations_via_url
    assert_response :success
  end

  test "should get Sprong" do
    get account_activations_Sprong_url
    assert_response :success
  end

  test "should get preloader" do
    get account_activations_preloader_url
    assert_response :success
  end

  test "should get in" do
    get account_activations_in_url
    assert_response :success
  end

  test "should get process" do
    get account_activations_process_url
    assert_response :success
  end

  test "should get 1252" do
    get account_activations_1252_url
    assert_response :success
  end

end
