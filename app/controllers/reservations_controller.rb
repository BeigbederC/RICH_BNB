class ReservationsController < ApplicationController
  def index
    @house.
  end

  def new
    @houses = House.find(param[:house_id])
    @reservations = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservations_params)
    @reservation.house = House.find(params[:house_id])
    @reservation.save
    if @reservation.save
      redirect_to house_reservation_path(House.find(params[:house_id]))
    else
      render :new
    end
  end

  def destroy
  end


  private

  def reservations_params
    params.require(:review).permit(:content, :rating)
  end
end

