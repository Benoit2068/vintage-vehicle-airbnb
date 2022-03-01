class VehiclesController < ApplicationController

  before_action :find_vehicle, only: [:show, :edit, :update]


  def index
   # @vehicles = Vehicle.all

    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @vehicles = Vehicle.where(sql_query, query: "%#{params[:query]}%")
    else
      @vehicles = Vehicle.all
    end
  end


  def show
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    if @vehicle.save
      redirect_to vehicle_path(@vehicle)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @vehicle.update(vehicle_params)
    redirect_to vehicle_path(@vehicle)
  end



  private

  def find_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def vehicle_params
    params.require(:vehicle).permit(:name, :description, :price, :photo, :user)
  end

end
