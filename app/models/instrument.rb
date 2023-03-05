class Instrument < ApplicationRecord
  has_many :instrument_classes
  has_many :teachers, through: :instrument_classes

  validates :name, presence: true
  validates :description, presence: true
end
