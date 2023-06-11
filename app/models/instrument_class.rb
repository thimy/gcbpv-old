class InstrumentClass < ApplicationRecord
  belongs_to :instrument
  belongs_to :teacher
  belongs_to :city
end
