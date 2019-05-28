class FoodTrucksController < ApiController
  before_action :set_food_truck, only: [:show, :update, :destroy]

  # GET /food_trucks
  def index
    @food_trucks = FoodTruck.all

    render json: @food_trucks
  end

  # GET /food_trucks/1
  def show
    render json: @food_truck
  end

  # POST /food_trucks
  def create
    @food_truck = FoodTruck.new(food_truck_params)

    if @food_truck.save
      render json: @food_truck, status: :created, location: @food_truck
    else
      render json: @food_truck.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /food_trucks/1
  def update
    if @food_truck.update(food_truck_params)
      render json: @food_truck
    else
      render json: @food_truck.errors, status: :unprocessable_entity
    end
  end

  # DELETE /food_trucks/1
  def destroy
    @food_truck.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_truck
      @food_truck = FoodTruck.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def food_truck_params
      params.require(:food_truck).permit(:name, :description)
    end
end
