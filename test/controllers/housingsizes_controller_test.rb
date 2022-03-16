require "test_helper"

class HousingsizesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @housingsize = housingsizes(:one)
  end

  test "should get index" do
    get housingsizes_url
    assert_response :success
  end

  test "should get new" do
    get new_housingsize_url
    assert_response :success
  end

  test "should create housingsize" do
    assert_difference('Housingsize.count') do
      post housingsizes_url, params: { housingsize: { value: @housingsize.value } }
    end

    assert_redirected_to housingsize_url(Housingsize.last)
  end

  test "should show housingsize" do
    get housingsize_url(@housingsize)
    assert_response :success
  end

  test "should get edit" do
    get edit_housingsize_url(@housingsize)
    assert_response :success
  end

  test "should update housingsize" do
    patch housingsize_url(@housingsize), params: { housingsize: { value: @housingsize.value } }
    assert_redirected_to housingsize_url(@housingsize)
  end

  test "should destroy housingsize" do
    assert_difference('Housingsize.count', -1) do
      delete housingsize_url(@housingsize)
    end

    assert_redirected_to housingsizes_url
  end
end
