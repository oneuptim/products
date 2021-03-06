class Product < ApplicationRecord
  belongs_to :category
  has_many :comments
  validates :name, :description, :pricing, presence: true
end
