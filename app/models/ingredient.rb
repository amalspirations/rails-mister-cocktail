class Ingredient < ApplicationRecord
  # before_destroy :allow_destroy?

  validates :name, presence: true, uniqueness: true, allow_blank: false
  has_many :doses
  # has_many :doses, dependent: :destroy
  has_many :cocktails, through: :doses


  # def allow_destroy?
  #   if doses.any?
  #     raise "You cannot destroy this ingredient"
  #     return false
  #   else
  #     return true
  #   end
  # end
end
