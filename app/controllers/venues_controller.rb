class VenuesController < ApplicationController

  def start
  end

  def show
    @venue = Venue.find_by(id: params[:id])
  end

  def randomize
    zipcode = params.permit(:zipcode)[:zipcode].to_i
    @venue = Foursquare.find_venue(zipcode)
    if @venue
      redirect_to venue_path(@venue)
    else
      redirect_to venues_start_path, flash: {alert: "Could not find a location in that zip"}
    end
  end

end
