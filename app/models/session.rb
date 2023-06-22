class Session < ApplicationRecord
  # A session is a time span where classes are dispensed in a specific city on a specific day
  belongs_to :instrument_class
  belongs_to :city
end
