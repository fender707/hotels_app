class TopsController < ApplicationController

  def index 
    @hotels = Hotel.order("Created_at DESC")
  end

end
