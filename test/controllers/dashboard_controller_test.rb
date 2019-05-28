require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_index_url
    assert_response :success
  end

  test "should get articles" do
    get dashboard_articles_url
    assert_response :success
  end

  test "should get images" do
    get dashboard_images_url
    assert_response :success
  end

  test "should get account" do
    get dashboard_account_url
    assert_response :success
  end

  test "should get about" do
    get dashboard_about_url
    assert_response :success
  end

end
