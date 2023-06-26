class InstrumentClass < ApplicationRecord
  # association table to link teachers to many instruments
  belongs_to :instrument
  belongs_to :teacher

  CLASS_DAYS = [
    { value: "monday", label: "actif" },
    { value: "tuesday", label: "inactif" },
    { value: "wednesday", label: "caché" },
    { value: "thursday", label: "caché" },
    { value: "friday", label: "caché" }
  ]
  validates :class_day, presence: true, inclusion: { in: CLASS_DAYS }
  validates :start_time, presence: true
  validates :end_time, presence: true

  def name
    "#{instrument.name} avec #{teacher.name}"
  end
end
