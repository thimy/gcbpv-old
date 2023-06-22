class Payor < ApplicationRecord
  # A payor is the person that will pay for one (can be themselves) or many students
  has_many :students
end
