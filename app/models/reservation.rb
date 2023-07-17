class Reservation < ApplicationRecord
  belongs_to :listing

  after_create :create_mission

  def create_mission
    Mission.create(listing: listing, date: start_date, mission_type: "first_checkin", price: 10)
    Mission.create(listing: listing, date: end_date, mission_type: "checkout_checkin", price: 10)
  end
end
