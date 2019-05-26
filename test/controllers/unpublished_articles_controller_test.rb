require 'test_helper'

class UnpublishedArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unpublished_article = unpublished_articles(:one)
  end

  test "should get index" do
    get unpublished_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_unpublished_article_url
    assert_response :success
  end

  test "should create unpublished_article" do
    assert_difference('UnpublishedArticle.count') do
      post unpublished_articles_url, params: { unpublished_article: { comments: @unpublished_article.comments, content: @unpublished_article.content, status: @unpublished_article.status, title: @unpublished_article.title } }
    end

    assert_redirected_to unpublished_article_url(UnpublishedArticle.last)
  end

  test "should show unpublished_article" do
    get unpublished_article_url(@unpublished_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_unpublished_article_url(@unpublished_article)
    assert_response :success
  end

  test "should update unpublished_article" do
    patch unpublished_article_url(@unpublished_article), params: { unpublished_article: { comments: @unpublished_article.comments, content: @unpublished_article.content, status: @unpublished_article.status, title: @unpublished_article.title } }
    assert_redirected_to unpublished_article_url(@unpublished_article)
  end

  test "should destroy unpublished_article" do
    assert_difference('UnpublishedArticle.count', -1) do
      delete unpublished_article_url(@unpublished_article)
    end

    assert_redirected_to unpublished_articles_url
  end
end
