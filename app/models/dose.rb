class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient_id }
  belongs_to :cocktail
  belongs_to :ingredient
end
