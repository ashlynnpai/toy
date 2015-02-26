class BadgesController < ApplicationController
  
  def index
    @treehouse_api = Treehouse.response
    @treehouse = Treehouse.stuntdouble
    @codeschool_api = Codeschool.response
    @codeschool = Codeschool.stuntdouble
  end
end