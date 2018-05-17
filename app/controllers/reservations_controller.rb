class ReservationsController < ApplicationController
  def index
    @user = current_user
    @reservations = @user.reservations.order(created_at: :desc)
  end

  def new
    @user = current_user
    @house = House.find(params[:house_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.house = House.find(params[:house_id])
    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path
  end


  private



  def reservation_params
    params.require(:reservation).permit(:house_id, :guests_number, :start_booked_at, :end_booked_at)
  end
end


