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
  end

  def destroy
  end

  private
  def house_params
    params.require(:house).permit(:name)
  end
end

