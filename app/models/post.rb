class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 10 }

  VALID_STATUSES = [
    { value: "private", label: "privé" },
    { value: "public", label: "public" }, 
    { value: "archived", label: "archivé" }
  ]
  validates :status, presence: true, inclusion: { in: VALID_STATUSES }

  belongs_to :event, optional: true
  belongs_to :category, optional: true

  def public?
    status == "public"
  end

  def archived?
    status == "archived"
  end
end
