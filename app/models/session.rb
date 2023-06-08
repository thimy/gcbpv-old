class Session < ApplicationRecord
  belongs_to :instrument_class
  belongs_to :city
end
