class Edition < ApplicationRecord
  # An edition is a medium that is promoted by the association
  has_one_attached :image
end
