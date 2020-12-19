class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  has_one :cocktail, :ingredient

  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true
end
