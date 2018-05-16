class ReservationsController < ApplicationController
  def index
    @house = House.find(params[:house_id])
    @reservations = @house.reservations
  end

  def new
    @house = House.find(params[:house_id])
    @reservation = Reservation.new
  end

  def create
    @house = House.find(params[:house_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.house = House.find(params[:house_id])
    @reservation.user = current_user
    if @reservation.save
      redirect_to house_reservations_path(@house)
    else
      render :new
    end
  end

  def destroy
  end


  private

  def reservation_params
    params.require(:reservation).permit(:guests_number, :start_booked_at, :end_booked_at)
  end
end


