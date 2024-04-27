class Recipe < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :description, presence: true
  validates :cook_time, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
