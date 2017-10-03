class Plan < ApplicationRecord
  belongs_to :user
  belongs_to :venue

  validate :date_checker

  def date_checker
    if self.date < Date.today
      self.errors[:date] << "Date cannot be in the past"
    end
  end


end
