require "application_system_test_case"

class HousingsizesTest < ApplicationSystemTestCase
  setup do
    @housingsize = housingsizes(:one)
  end

  test "visiting the index" do
    visit housingsizes_url
    assert_selector "h1", text: "Housingsizes"
  end

  test "creating a Housingsize" do
    visit housingsizes_url
    click_on "New Housingsize"

    fill_in "Value", with: @housingsize.value
    click_on "Create Housingsize"

    assert_text "Housingsize was successfully created"
    click_on "Back"
  end

  test "updating a Housingsize" do
    visit housingsizes_url
    click_on "Edit", match: :first

    fill_in "Value", with: @housingsize.value
    click_on "Update Housingsize"

    assert_text "Housingsize was successfully updated"
    click_on "Back"
  end

  test "destroying a Housingsize" do
    visit housingsizes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Housingsize was successfully destroyed"
  end
end
