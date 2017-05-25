class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true, allow_blank: false
  has_many :doses
  has_many :cocktails, through: :doses
end
