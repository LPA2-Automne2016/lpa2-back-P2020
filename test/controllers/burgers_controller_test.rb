require 'test_helper'

class BurgersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @burger = burgers(:one)
  end

  test "should get index" do
    get burgers_url
    assert_response :success
  end

  test "should get new" do
    get new_burger_url
    assert_response :success
  end

  test "should create burger" do
    assert_difference('Burger.count') do
      post burgers_url, params: { burger: { image: @burger.image, name: @burger.name, nutriscore: @burger.nutriscore, price: @burger.price } }
    end

    assert_redirected_to burger_url(Burger.last)
  end

  test "should show burger" do
    get burger_url(@burger)
    assert_response :success
  end

  test "should get edit" do
    get edit_burger_url(@burger)
    assert_response :success
  end

  test "should update burger" do
    patch burger_url(@burger), params: { burger: { image: @burger.image, name: @burger.name, nutriscore: @burger.nutriscore, price: @burger.price } }
    assert_redirected_to burger_url(@burger)
  end

  test "should destroy burger" do
    assert_difference('Burger.count', -1) do
      delete burger_url(@burger)
    end

    assert_redirected_to burgers_url
  end
end
