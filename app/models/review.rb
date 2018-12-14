class Review < ApplicationRecord
  belongs_to :product

  validates :review, :presence => true
  validates :rating, :presence => true
end
