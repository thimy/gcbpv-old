class Student < ApplicationRecord
  # A student can takes many classes and has their subscription paid by a payor
  belongs_to :payor
end
