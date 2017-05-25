class Dose < ApplicationRecord
  validates :description, presence: true, allow_blank: false
  validates :cocktail_id, presence: true
  validates :ingredient_id, presence: true, uniqueness: {scope: :cocktail_id}
  belongs_to :cocktail
  belongs_to :ingredient
end
