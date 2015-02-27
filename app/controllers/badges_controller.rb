class BadgesController < ApplicationController
  
  def index
    @treehouse_api = Treehouse.response
    @treehouse = Treehouse.stuntdouble
    @codeschool_api = Codeschool.response
    @codeschool = Codeschool.stuntdouble
    @codewars_api = Codewars.response
    @codewars = Codewars.stuntdouble
    @codewars_javascript = Codewars.language_parse(@codewars, "javascript")
    @katas = Codewars.latest(@codewars, 10)
  end
end