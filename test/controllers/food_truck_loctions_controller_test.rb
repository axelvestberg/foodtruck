require 'test_helper'

class FoodTruckLoctionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_truck_loction = food_truck_loctions(:one)
  end

  test "should get index" do
    get food_truck_loctions_url, as: :json
    assert_response :success
  end

  test "should create food_truck_loction" do
    assert_difference('FoodTruckLoction.count') do
      post food_truck_loctions_url, params: { food_truck_loction: { address: @food_truck_loction.address, end: @food_truck_loction.end, foodtruck_id: @food_truck_loction.foodtruck_id, start: @food_truck_loction.start } }, as: :json
    end

    assert_response 201
  end

  test "should show food_truck_loction" do
    get food_truck_loction_url(@food_truck_loction), as: :json
    assert_response :success
  end

  test "should update food_truck_loction" do
    patch food_truck_loction_url(@food_truck_loction), params: { food_truck_loction: { address: @food_truck_loction.address, end: @food_truck_loction.end, foodtruck_id: @food_truck_loction.foodtruck_id, start: @food_truck_loction.start } }, as: :json
    assert_response 200
  end

  test "should destroy food_truck_loction" do
    assert_difference('FoodTruckLoction.count', -1) do
      delete food_truck_loction_url(@food_truck_loction), as: :json
    end

    assert_response 204
  end
end
