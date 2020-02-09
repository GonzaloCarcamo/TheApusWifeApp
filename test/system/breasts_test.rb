require "application_system_test_case"

class BreastsTest < ApplicationSystemTestCase
  setup do
    @breast = breasts(:one)
  end

  test "visiting the index" do
    visit breasts_url
    assert_selector "h1", text: "Breasts"
  end

  test "creating a Breast" do
    visit breasts_url
    click_on "New Breast"

    fill_in "Baby", with: @breast.baby_id
    fill_in "Duration", with: @breast.duration
    fill_in "Ftimes", with: @breast.ftimes
    fill_in "Quantify", with: @breast.quantify
    click_on "Create Breast"

    assert_text "Breast was successfully created"
    click_on "Back"
  end

  test "updating a Breast" do
    visit breasts_url
    click_on "Edit", match: :first

    fill_in "Baby", with: @breast.baby_id
    fill_in "Duration", with: @breast.duration
    fill_in "Ftimes", with: @breast.ftimes
    fill_in "Quantify", with: @breast.quantify
    click_on "Update Breast"

    assert_text "Breast was successfully updated"
    click_on "Back"
  end

  test "destroying a Breast" do
    visit breasts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Breast was successfully destroyed"
  end
end
