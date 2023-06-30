class InstrumentClass < ApplicationRecord
  # association table to link teachers to many instruments
  belongs_to :instrument
  belongs_to :teacher
  has_and_belongs_to_many :season

  CLASS_DAYS = [
    { value: "monday", label: "lundi" },
    { value: "tuesday", label: "mardi" },
    { value: "wednesday", label: "mercredi" },
    { value: "thursday", label: "jeudi" },
    { value: "friday", label: "vendredi" }
  ]
  validates :class_day, presence: true, inclusion: { in: CLASS_DAYS }
  validates :start_time, presence: true
  validates :end_time, presence: TeacherResource

  def name
    "#{instrument.name} avec #{teacher.name}"
  end

  def self.suggestions
    InstrumentClass.all.map { |instrument_class| { value: instrument_class.id, label: instrument_class.name }} 
  end

  def self.ransackable_attributes(auth_object = nil)
    ["instrument_id", "teacher_id", "name", "start_time", "end_time"]
  end
end
