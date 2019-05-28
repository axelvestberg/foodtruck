require 'test_helper'

class FoodTrucksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_truck = food_trucks(:one)
  end

  test "should get index" do
    get food_trucks_url, as: :json
    assert_response :success
  end

  test "should create food_truck" do
    assert_difference('FoodTruck.count') do
      post food_trucks_url, params: { food_truck: { description: @food_truck.description, name: @food_truck.name } }, as: :json
    end

    assert_response 201
  end

  test "should show food_truck" do
    get food_truck_url(@food_truck), as: :json
    assert_response :success
  end

  test "should update food_truck" do
    patch food_truck_url(@food_truck), params: { food_truck: { description: @food_truck.description, name: @food_truck.name } }, as: :json
    assert_response 200
  end

  test "should destroy food_truck" do
    assert_difference('FoodTruck.count', -1) do
      delete food_truck_url(@food_truck), as: :json
    end

    assert_response 204
  end
end
