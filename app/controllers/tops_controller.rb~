class TopsController < ApplicationController

  def index 
    @hotels = Hotel.order("Created_at DESC").limit(5)
  end

end
