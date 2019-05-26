require 'test_helper'

class UnpublishedImagePostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unpublished_image_post = unpublished_image_posts(:one)
  end

  test "should get index" do
    get unpublished_image_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_unpublished_image_post_url
    assert_response :success
  end

  test "should create unpublished_image_post" do
    assert_difference('UnpublishedImagePost.count') do
      post unpublished_image_posts_url, params: { unpublished_image_post: { comments: @unpublished_image_post.comments, description: @unpublished_image_post.description, status: @unpublished_image_post.status, thumbnail_url: @unpublished_image_post.thumbnail_url, title: @unpublished_image_post.title } }
    end

    assert_redirected_to unpublished_image_post_url(UnpublishedImagePost.last)
  end

  test "should show unpublished_image_post" do
    get unpublished_image_post_url(@unpublished_image_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_unpublished_image_post_url(@unpublished_image_post)
    assert_response :success
  end

  test "should update unpublished_image_post" do
    patch unpublished_image_post_url(@unpublished_image_post), params: { unpublished_image_post: { comments: @unpublished_image_post.comments, description: @unpublished_image_post.description, status: @unpublished_image_post.status, thumbnail_url: @unpublished_image_post.thumbnail_url, title: @unpublished_image_post.title } }
    assert_redirected_to unpublished_image_post_url(@unpublished_image_post)
  end

  test "should destroy unpublished_image_post" do
    assert_difference('UnpublishedImagePost.count', -1) do
      delete unpublished_image_post_url(@unpublished_image_post)
    end

    assert_redirected_to unpublished_image_posts_url
  end
end
