class Api::CitiesController < ApplicationController
  def index
    cities = City.all
    if size = params[:size]
      cities = cities.where(size: size)
    end
    respond_to do |format|
      format.json { render json: cities, status: 200 }
      format.xml { render xml: cities, status: 200 }
    end
  end
  
  def create
    city = City.new(city_params)
    if city.save
      render json: city, status: 201, location: [:api,city]
    else
      render json: city.errors, status: 422
    end
  end

  def show
    city = City.find_available(params[:id])
    respond_to do |format|
      format.json { render json: city, status: 200 }
    end
  end
  
  def update
    city = City.find(params[:id])
      if city.update(city_params)
      render json: city, status: 200
    end
  end
  
  def destroy
    city = City.find_available(params[:id])
    city.archive
    head 204
  end
  
  private 
  
  def city_params
    params.require(:city).permit(:name, :size)
  end
end
