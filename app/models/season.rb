class Season < ApplicationRecord
  belongs_to :instrument_class
  belongs_to :workshop
  belongs_to :plan
end
