class Teacher < ApplicationRecord
  has_many :instrument_classes
  has_many :instruments, through: :instrument_classes
  has_many :workshops

  validates :name, presence: true

  VALID_STATUSES = ["active", "inactive", "hidden"]
  validates :status, inclusion: { in: VALID_STATUSES }

  def active?
    status == "active"
  end

  def inactive?
    status == "inactive"
  end
end
