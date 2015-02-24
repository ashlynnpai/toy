class BadgesController < ApplicationController
  
  def index
    @treehouse_api = Treehouse.response
    @treehouse = Treehouse.stuntdouble
  end
end