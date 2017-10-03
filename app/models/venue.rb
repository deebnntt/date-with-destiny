class Venue < ApplicationRecord
  has_many :plans
  has_many :users, through: :plans

  validates :street_address, uniqueness: true

  def self.zipcodes
    self.all.map { |venue| venue.zipcode }.uniq
  end

end
