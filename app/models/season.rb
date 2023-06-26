class Season < ApplicationRecord
  # A season describes one school term
  has_many :instrument_class
  has_many :workshop
  has_one :plan

  validates :start_year, presence: true

  def name
    "#{star_year}-#{start_year + 1}"
  end
end
