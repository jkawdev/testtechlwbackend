class Booking < ApplicationRecord
  belongs_to :listing

  after_create :create_mission

  def create_mission
    Mission.create(listing: listing, date: start_date, mission_type: "last_checkout", price: 5)
  end
end
