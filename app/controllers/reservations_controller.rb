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
    if @reservation.date_start < @reservation.date_end
      if @reservation.save
        redirect_to reservation_path(@reservation), notice: "Your Booking is Ok"
      else
        render :new, alert: 'Error your booking is not valid!'
      end
    else
      flash.now[:alert] = 'Error the end date must be greater than the start date!'
      render :new
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    @duration = (@reservation.date_end - @reservation.date_start).to_i
    @reservation_price = @duration * @reservation.vehicle.price.to_i
  end



  private

  def resevation_params
    params.require(:reservation).permit(:date_start, :date_end, :comment, :vehicle_id, :user_id)
  end


end
