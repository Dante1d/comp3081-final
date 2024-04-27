class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :name, presence: true, length: { maximum: 100 }
  validates :quantity, presence: true, length: { maximum: 50 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :recipe_id, presence: true
end
