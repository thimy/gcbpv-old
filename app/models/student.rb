class Student < ApplicationRecord
  # A student can takes many classes and has their subscription paid by a payor
  belongs_to :payor
  
  SUBSCRIPTION_STATUSES = [
    { value: "inquiry", label: "Demande d’information" },
    { value: "subscribed", label: "Inscrit" },
    { value: "partial_payment", label: "Règlement partiel" },
    { value: "paid", label: "Règlement complet" },
    { value: "reimbursement", label: "À rembourser" }
  ]

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :status, presence: true, inclusion: { in: SUBSCRIPTION_STATUSES }

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.suggestions
    InstrumentClass.all
  end
end
