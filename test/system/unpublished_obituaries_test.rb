require "application_system_test_case"

class UnpublishedObituariesTest < ApplicationSystemTestCase
  setup do
    @unpublished_obituary = unpublished_obituaries(:one)
  end

  test "visiting the index" do
    visit unpublished_obituaries_url
    assert_selector "h1", text: "Unpublished Obituaries"
  end

  test "creating a Unpublished obituary" do
    visit unpublished_obituaries_url
    click_on "New Unpublished Obituary"

    fill_in "Comments", with: @unpublished_obituary.comments
    fill_in "Death date", with: @unpublished_obituary.death_date
    fill_in "Name", with: @unpublished_obituary.name
    fill_in "Status", with: @unpublished_obituary.status
    fill_in "Thumbnail url", with: @unpublished_obituary.thumbnail_url
    click_on "Create Unpublished obituary"

    assert_text "Unpublished obituary was successfully created"
    click_on "Back"
  end

  test "updating a Unpublished obituary" do
    visit unpublished_obituaries_url
    click_on "Edit", match: :first

    fill_in "Comments", with: @unpublished_obituary.comments
    fill_in "Death date", with: @unpublished_obituary.death_date
    fill_in "Name", with: @unpublished_obituary.name
    fill_in "Status", with: @unpublished_obituary.status
    fill_in "Thumbnail url", with: @unpublished_obituary.thumbnail_url
    click_on "Update Unpublished obituary"

    assert_text "Unpublished obituary was successfully updated"
    click_on "Back"
  end

  test "destroying a Unpublished obituary" do
    visit unpublished_obituaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Unpublished obituary was successfully destroyed"
  end
end
