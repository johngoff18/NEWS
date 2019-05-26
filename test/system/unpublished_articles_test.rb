require "application_system_test_case"

class UnpublishedArticlesTest < ApplicationSystemTestCase
  setup do
    @unpublished_article = unpublished_articles(:one)
  end

  test "visiting the index" do
    visit unpublished_articles_url
    assert_selector "h1", text: "Unpublished Articles"
  end

  test "creating a Unpublished article" do
    visit unpublished_articles_url
    click_on "New Unpublished Article"

    fill_in "Comments", with: @unpublished_article.comments
    fill_in "Content", with: @unpublished_article.content
    fill_in "Status", with: @unpublished_article.status
    fill_in "Title", with: @unpublished_article.title
    click_on "Create Unpublished article"

    assert_text "Unpublished article was successfully created"
    click_on "Back"
  end

  test "updating a Unpublished article" do
    visit unpublished_articles_url
    click_on "Edit", match: :first

    fill_in "Comments", with: @unpublished_article.comments
    fill_in "Content", with: @unpublished_article.content
    fill_in "Status", with: @unpublished_article.status
    fill_in "Title", with: @unpublished_article.title
    click_on "Update Unpublished article"

    assert_text "Unpublished article was successfully updated"
    click_on "Back"
  end

  test "destroying a Unpublished article" do
    visit unpublished_articles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Unpublished article was successfully destroyed"
  end
end
