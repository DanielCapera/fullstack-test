class Product < ApplicationRecord
  belongs_to :company
  
  validates :name, :category, :price, presence: true
end
