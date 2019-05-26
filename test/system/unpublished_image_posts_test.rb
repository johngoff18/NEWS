require "application_system_test_case"

class UnpublishedImagePostsTest < ApplicationSystemTestCase
  setup do
    @unpublished_image_post = unpublished_image_posts(:one)
  end

  test "visiting the index" do
    visit unpublished_image_posts_url
    assert_selector "h1", text: "Unpublished Image Posts"
  end

  test "creating a Unpublished image post" do
    visit unpublished_image_posts_url
    click_on "New Unpublished Image Post"

    fill_in "Comments", with: @unpublished_image_post.comments
    fill_in "Description", with: @unpublished_image_post.description
    fill_in "Status", with: @unpublished_image_post.status
    fill_in "Thumbnail url", with: @unpublished_image_post.thumbnail_url
    fill_in "Title", with: @unpublished_image_post.title
    click_on "Create Unpublished image post"

    assert_text "Unpublished image post was successfully created"
    click_on "Back"
  end

  test "updating a Unpublished image post" do
    visit unpublished_image_posts_url
    click_on "Edit", match: :first

    fill_in "Comments", with: @unpublished_image_post.comments
    fill_in "Description", with: @unpublished_image_post.description
    fill_in "Status", with: @unpublished_image_post.status
    fill_in "Thumbnail url", with: @unpublished_image_post.thumbnail_url
    fill_in "Title", with: @unpublished_image_post.title
    click_on "Update Unpublished image post"

    assert_text "Unpublished image post was successfully updated"
    click_on "Back"
  end

  test "destroying a Unpublished image post" do
    visit unpublished_image_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Unpublished image post was successfully destroyed"
  end
end
