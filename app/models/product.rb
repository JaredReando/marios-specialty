class Product < ApplicationRecord
  has_many :reviews

  validate :name, :presence => true
end
