class Subscription < ApplicationRecord
  belongs_to :season
  belongs_to :student

  validates :season, presence: true
  validates :student, presence: true
end
