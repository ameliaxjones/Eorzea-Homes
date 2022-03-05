require "application_system_test_case"

class GameAddressesTest < ApplicationSystemTestCase
  setup do
    @game_address = game_addresses(:one)
  end

  test "visiting the index" do
    visit game_addresses_url
    assert_selector "h1", text: "Game Addresses"
  end

  test "creating a Game address" do
    visit game_addresses_url
    click_on "New Game Address"

    fill_in "Datacenter", with: @game_address.datacenter
    fill_in "Location", with: @game_address.location
    fill_in "Plot", with: @game_address.plot
    fill_in "Roomnumber", with: @game_address.roomnumber
    fill_in "Ward", with: @game_address.ward
    click_on "Create Game address"

    assert_text "Game address was successfully created"
    click_on "Back"
  end

  test "updating a Game address" do
    visit game_addresses_url
    click_on "Edit", match: :first

    fill_in "Datacenter", with: @game_address.datacenter
    fill_in "Location", with: @game_address.location
    fill_in "Plot", with: @game_address.plot
    fill_in "Roomnumber", with: @game_address.roomnumber
    fill_in "Ward", with: @game_address.ward
    click_on "Update Game address"

    assert_text "Game address was successfully updated"
    click_on "Back"
  end

  test "destroying a Game address" do
    visit game_addresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Game address was successfully destroyed"
  end
end
