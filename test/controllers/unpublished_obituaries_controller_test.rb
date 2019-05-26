require 'test_helper'

class UnpublishedObituariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unpublished_obituary = unpublished_obituaries(:one)
  end

  test "should get index" do
    get unpublished_obituaries_url
    assert_response :success
  end

  test "should get new" do
    get new_unpublished_obituary_url
    assert_response :success
  end

  test "should create unpublished_obituary" do
    assert_difference('UnpublishedObituary.count') do
      post unpublished_obituaries_url, params: { unpublished_obituary: { comments: @unpublished_obituary.comments, death_date: @unpublished_obituary.death_date, name: @unpublished_obituary.name, status: @unpublished_obituary.status, thumbnail_url: @unpublished_obituary.thumbnail_url } }
    end

    assert_redirected_to unpublished_obituary_url(UnpublishedObituary.last)
  end

  test "should show unpublished_obituary" do
    get unpublished_obituary_url(@unpublished_obituary)
    assert_response :success
  end

  test "should get edit" do
    get edit_unpublished_obituary_url(@unpublished_obituary)
    assert_response :success
  end

  test "should update unpublished_obituary" do
    patch unpublished_obituary_url(@unpublished_obituary), params: { unpublished_obituary: { comments: @unpublished_obituary.comments, death_date: @unpublished_obituary.death_date, name: @unpublished_obituary.name, status: @unpublished_obituary.status, thumbnail_url: @unpublished_obituary.thumbnail_url } }
    assert_redirected_to unpublished_obituary_url(@unpublished_obituary)
  end

  test "should destroy unpublished_obituary" do
    assert_difference('UnpublishedObituary.count', -1) do
      delete unpublished_obituary_url(@unpublished_obituary)
    end

    assert_redirected_to unpublished_obituaries_url
  end
end
