require "application_system_test_case"

class DataTest < ApplicationSystemTestCase
  setup do
    @datum = data(:one)
  end

  test "visiting the index" do
    visit data_url
    assert_selector "h1", text: "Data"
  end

  test "creating a Datum" do
    visit data_url
    click_on "New Datum"

    fill_in "Linkdin", with: @datum.Linkdin
    fill_in "Email", with: @datum.email
    fill_in "First name", with: @datum.first_name
    fill_in "Last name", with: @datum.last_name
    fill_in "Phone", with: @datum.phone
    click_on "Create Datum"

    assert_text "Datum was successfully created"
    click_on "Back"
  end

  test "updating a Datum" do
    visit data_url
    click_on "Edit", match: :first

    fill_in "Linkdin", with: @datum.Linkdin
    fill_in "Email", with: @datum.email
    fill_in "First name", with: @datum.first_name
    fill_in "Last name", with: @datum.last_name
    fill_in "Phone", with: @datum.phone
    click_on "Update Datum"

    assert_text "Datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Datum" do
    visit data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Datum was successfully destroyed"
  end
end
