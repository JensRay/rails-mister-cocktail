class Ingredient < ApplicationRecord
  validetes :name, uniqueness: true
  has_many :dose
end
