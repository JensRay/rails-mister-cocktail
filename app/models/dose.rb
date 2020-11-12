class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
  belongs_to :coctail
  belongs_to :ingredient
end
