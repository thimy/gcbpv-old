class Workshop < ApplicationRecord
  # A workshop is a specific class where students can play as a group
  belongs_to :teacher
  has_and_belongs_to_many :season
  
  validates :name, presence: true
  validates :teacher, presence: true
  validates :workshop_day, presence: true
end
