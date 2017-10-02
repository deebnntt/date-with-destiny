class User < ApplicationRecord
  has_many :plans
  has_many :venues, through: :plans
end
