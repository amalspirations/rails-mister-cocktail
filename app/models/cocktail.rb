class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true, allow_blank: false
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews, dependent: :destroy
  has_attachments :photos, maximum: 3
end
