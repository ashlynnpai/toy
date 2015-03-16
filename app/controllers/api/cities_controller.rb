class Api::CitiesController < ApplicationController
  def index
    cities = City.all
    if size = params[:size]
      cities = cities.where(size: size)
    end
    render json: cities, status: 200
#     respond_to do |format|
#       format.json { render json: cities, status: 200 }
#     end
  end
  
  def show
    city = City.find(params[:id])
  end
end
