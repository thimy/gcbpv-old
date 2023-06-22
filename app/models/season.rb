class Season < ApplicationRecord
  # A season describes one school term
  belongs_to :instrument_class
  belongs_to :workshop
  belongs_to :plan
end
