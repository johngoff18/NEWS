require "application_system_test_case"

class EmailSubscriptionsTest < ApplicationSystemTestCase
  setup do
    @email_subscription = email_subscriptions(:one)
  end

  test "visiting the index" do
    visit email_subscriptions_url
    assert_selector "h1", text: "Email Subscriptions"
  end

  test "creating a Email subscription" do
    visit email_subscriptions_url
    click_on "New Email Subscription"

    fill_in "Email address", with: @email_subscription.email_address
    click_on "Create Email subscription"

    assert_text "Email subscription was successfully created"
    click_on "Back"
  end

  test "updating a Email subscription" do
    visit email_subscriptions_url
    click_on "Edit", match: :first

    fill_in "Email address", with: @email_subscription.email_address
    click_on "Update Email subscription"

    assert_text "Email subscription was successfully updated"
    click_on "Back"
  end

  test "destroying a Email subscription" do
    visit email_subscriptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Email subscription was successfully destroyed"
  end
end
