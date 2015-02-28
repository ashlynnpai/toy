class CoursesController < ApplicationController
  
  def index
    @coursera_api = Coursera.response_courselist
    @coursera = Coursera.stuntdouble
  end
end