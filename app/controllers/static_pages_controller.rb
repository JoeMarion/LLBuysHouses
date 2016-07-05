class StaticPagesController < ApplicationController
  def index
    @sell_form = House.new
  end
end
