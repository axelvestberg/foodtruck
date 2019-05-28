class FoodTruckLoctionsController < ApiController
  before_action :set_food_truck_loction, only: [:show, :update, :destroy]

  # GET /food_truck_loctions
  def index
    @food_truck_loctions = FoodTruckLoction.all

    render json: @food_truck_loctions
  end

  # GET /food_truck_loctions/1
  def show
    render json: @food_truck_loction
  end

  # POST /food_truck_loctions
  def create
    @food_truck_loction = FoodTruckLoction.new(food_truck_loction_params)

    if @food_truck_loction.save
      render json: @food_truck_loction, status: :created, location: @food_truck_loction
    else
      render json: @food_truck_loction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /food_truck_loctions/1
  def update
    if @food_truck_loction.update(food_truck_loction_params)
      render json: @food_truck_loction
    else
      render json: @food_truck_loction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /food_truck_loctions/1
  def destroy
    @food_truck_loction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_truck_loction
      @food_truck_loction = FoodTruckLoction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def food_truck_loction_params
      params.require(:food_truck_loction).permit(:foodtruck_id, :address, :start, :end)
    end
end
