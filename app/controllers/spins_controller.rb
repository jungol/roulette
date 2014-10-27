class SpinsController < ApplicationController
  
  def new
    @spots = []
  end

  def create
    location = request.location 
    @client = GooglePlaces::Client.new('AIzaSyB_QWi7zPKtb69Nl11UJoFUsaxqZZztYWk')
    @spots = @client.spots(location.latitude, location.longitude, :types => 'restaurant')
    # methods are: location.latitude, location.longitude
    # @spots = @client.spots(51.5033630, -0.1276250, :types => 'restaurant')    
    
    # find restaurant by location
    # @restaurant = [ restaurant ]
    @spot = "hey"
    render 'new' 
  end

end