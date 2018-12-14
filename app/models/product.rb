class Product < ApplicationRecord
  has_many :reviews

  validates :name, :presence => true
  validates :cost, format: { with: /[0-9]/, message: "Only allows numbers"}
end
