class MissionsController < ApplicationController
  def new
    @listing = Listing.find(params[:listing_id])
    @mission = Mission.new
  end
end
