class HousesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @houses = House.where.not(latitude: nil, longitude: nil)

    @markers = @houses.map do |house|
      {
        lat: house.latitude,
        lng: house.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
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


