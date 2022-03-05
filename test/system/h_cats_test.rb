require "application_system_test_case"

class HCatsTest < ApplicationSystemTestCase
  setup do
    @h_cat = h_cats(:one)
  end

  test "visiting the index" do
    visit h_cats_url
    assert_selector "h1", text: "H Cats"
  end

  test "creating a H cat" do
    visit h_cats_url
    click_on "New H Cat"

    check "Apartment" if @h_cat.apartment
    check "Large" if @h_cat.large
    fill_in "Listing", with: @h_cat.listing_id
    check "Med" if @h_cat.med
    check "Small" if @h_cat.small
    click_on "Create H cat"

    assert_text "H cat was successfully created"
    click_on "Back"
  end

  test "updating a H cat" do
    visit h_cats_url
    click_on "Edit", match: :first

    check "Apartment" if @h_cat.apartment
    check "Large" if @h_cat.large
    fill_in "Listing", with: @h_cat.listing_id
    check "Med" if @h_cat.med
    check "Small" if @h_cat.small
    click_on "Update H cat"

    assert_text "H cat was successfully updated"
    click_on "Back"
  end

  test "destroying a H cat" do
    visit h_cats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "H cat was successfully destroyed"
  end
end
