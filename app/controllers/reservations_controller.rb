class ReservationsController < ApplicationController

  def new
    @vehicle = Vehicle.find(params[:vehicle_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(resevation_params)
    @vehicle = Vehicle.find(params[:vehicle_id])
    @reservation.vehicle = @vehicle
    @reservation.user = current_user
    if @reservation.save
      redirect_to vehicle_path(@reservation.vehicle)
    else
      render :new
    end
  end



  private

  def resevation_params
    params.require(:reservation).permit(:date_start, :date_end, :comment, :vehicle_id, :user_id)
  end


end
