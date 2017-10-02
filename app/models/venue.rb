class Venue < ApplicationRecord
  has_many :plans
  has_many :users, through: :plans

  def self.zipcodes
    self.all.map { |venue| venue.zipcode }.uniq
  end

end
