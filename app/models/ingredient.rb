class Ingredient < ApplicationRecord
  has_one :dose
  validates :name, uniqueness: true
end
