class Subscription < ApplicationRecord
  belongs_to :season
  belongs_to :students
end
