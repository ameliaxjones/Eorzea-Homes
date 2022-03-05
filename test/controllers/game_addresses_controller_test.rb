require "test_helper"

class GameAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_address = game_addresses(:one)
  end

  test "should get index" do
    get game_addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_game_address_url
    assert_response :success
  end

  test "should create game_address" do
    assert_difference('GameAddress.count') do
      post game_addresses_url, params: { game_address: { datacenter: @game_address.datacenter, location: @game_address.location, plot: @game_address.plot, roomnumber: @game_address.roomnumber, ward: @game_address.ward } }
    end

    assert_redirected_to game_address_url(GameAddress.last)
  end

  test "should show game_address" do
    get game_address_url(@game_address)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_address_url(@game_address)
    assert_response :success
  end

  test "should update game_address" do
    patch game_address_url(@game_address), params: { game_address: { datacenter: @game_address.datacenter, location: @game_address.location, plot: @game_address.plot, roomnumber: @game_address.roomnumber, ward: @game_address.ward } }
    assert_redirected_to game_address_url(@game_address)
  end

  test "should destroy game_address" do
    assert_difference('GameAddress.count', -1) do
      delete game_address_url(@game_address)
    end

    assert_redirected_to game_addresses_url
  end
end
