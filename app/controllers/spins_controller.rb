class SpinsController < ApplicationController
  
  def new
    
  end

  def create
    location = request.location 
    @client = GooglePlaces::Client.new('AIzaSyB_QWi7zPKtb69Nl11UJoFUsaxqZZztYWk')
    @spots = @client.spots(location.latitude, location.longitude, :types => 'restaurant')
    # methods are: location.latitude, location.longitude
    
    # find restaurant by location
    # @restaurant = [ restaurant ]
    
    redirect_to root_path 
  end

end

