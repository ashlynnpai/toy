module API
  class CitiesController < ApplicationController
    def index
      cities = City.all
      render json: humans, status: 200
    end
  end
end