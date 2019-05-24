require "application_system_test_case"

class ObituariesTest < ApplicationSystemTestCase
  setup do
    @obituary = obituaries(:one)
  end

  test "visiting the index" do
    visit obituaries_url
    assert_selector "h1", text: "Obituaries"
  end

  test "creating a Obituary" do
    visit obituaries_url
    click_on "New Obituary"

    fill_in "Content", with: @obituary.content
    fill_in "Death date", with: @obituary.death_date
    fill_in "Name", with: @obituary.name
    click_on "Create Obituary"

    assert_text "Obituary was successfully created"
    click_on "Back"
  end

  test "updating a Obituary" do
    visit obituaries_url
    click_on "Edit", match: :first

    fill_in "Content", with: @obituary.content
    fill_in "Death date", with: @obituary.death_date
    fill_in "Name", with: @obituary.name
    click_on "Update Obituary"

    assert_text "Obituary was successfully updated"
    click_on "Back"
  end

  test "destroying a Obituary" do
    visit obituaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Obituary was successfully destroyed"
  end
end
