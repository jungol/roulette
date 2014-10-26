class SpinsController < ApplicationController
  
  def new
    
  end

  def create
    location = request.location  
    # methods are: location.latitude, location.longitude
    
    # find restaurant by location
    # @restaurant = [ restaurant ]
    
    redirect_to root 
  end

end

