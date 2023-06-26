class Workshop < ApplicationRecord
  # A workshop is a specific class where students can play as a group
  belongs_to :teacher
  
  validates :name, presence: true
  validates :teacher, presence: true
  validates :workshop_day, presence: true
end
