class Cocktail < ApplicationRecord
  has_many :dose
  validates :name, uniqueness: true
end
