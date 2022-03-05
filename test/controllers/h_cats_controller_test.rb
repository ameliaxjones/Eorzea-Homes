require "test_helper"

class HCatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @h_cat = h_cats(:one)
  end

  test "should get index" do
    get h_cats_url
    assert_response :success
  end

  test "should get new" do
    get new_h_cat_url
    assert_response :success
  end

  test "should create h_cat" do
    assert_difference('HCat.count') do
      post h_cats_url, params: { h_cat: { apartment: @h_cat.apartment, large: @h_cat.large, listing_id: @h_cat.listing_id, med: @h_cat.med, small: @h_cat.small } }
    end

    assert_redirected_to h_cat_url(HCat.last)
  end

  test "should show h_cat" do
    get h_cat_url(@h_cat)
    assert_response :success
  end

  test "should get edit" do
    get edit_h_cat_url(@h_cat)
    assert_response :success
  end

  test "should update h_cat" do
    patch h_cat_url(@h_cat), params: { h_cat: { apartment: @h_cat.apartment, large: @h_cat.large, listing_id: @h_cat.listing_id, med: @h_cat.med, small: @h_cat.small } }
    assert_redirected_to h_cat_url(@h_cat)
  end

  test "should destroy h_cat" do
    assert_difference('HCat.count', -1) do
      delete h_cat_url(@h_cat)
    end

    assert_redirected_to h_cats_url
  end
end
