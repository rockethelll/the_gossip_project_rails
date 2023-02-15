class CityController < ApplicationController
  def show
    @city = City.find(params[:id])
    @gossip = @city.gossips
  end
end
