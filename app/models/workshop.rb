class Workshop < ApplicationRecord
  # A workshop is a specific class where students can play as a group
  belongs_to :teacher
  has_and_belongs_to_many :season
  
  WORKSHOP_TYPES = [
    { value: "workshop", label: "Atelier" },
    { value: "awakening", label: "Éveil" },
    { value: "kids_discovery", label: "Découverte enfants" },
    { value: "discovery", label: "Découverte adultes" }
  ]

  validates :name, presence: true
  validates :teacher, presence: true
  validates :workshop_day, presence: true
  validates :workshop_type, presence: true, inclusion: { in: WORKSHOP_TYPES }
end
