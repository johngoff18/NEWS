require "application_system_test_case"

class ImagePostsTest < ApplicationSystemTestCase
  setup do
    @image_post = image_posts(:one)
  end

  test "visiting the index" do
    visit image_posts_url
    assert_selector "h1", text: "Image Posts"
  end

  test "creating a Image post" do
    visit image_posts_url
    click_on "New Image Post"

    fill_in "Description", with: @image_post.description
    fill_in "Image url", with: @image_post.image_url
    fill_in "Title", with: @image_post.title
    click_on "Create Image post"

    assert_text "Image post was successfully created"
    click_on "Back"
  end

  test "updating a Image post" do
    visit image_posts_url
    click_on "Edit", match: :first

    fill_in "Description", with: @image_post.description
    fill_in "Image url", with: @image_post.image_url
    fill_in "Title", with: @image_post.title
    click_on "Update Image post"

    assert_text "Image post was successfully updated"
    click_on "Back"
  end

  test "destroying a Image post" do
    visit image_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Image post was successfully destroyed"
  end
end
