class HousesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def edit
    @house = House.find(params[:id])
  end

  def create
    @house = House.new(house_params)
      if @house.save
        redirect_to new_house_path
      else
        render :new
      end
  end

  def update
    @house = House.find(params[:id])
    @house.update(params[:house])
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to houses_path
  end

  private
  def house_params
    params.require(:house).permit(:name, :description, :house_picture, :price_per_night, :address)
  end
end

