class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy #will be destroyed if we destroy the cocktail
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true;
  has_one_attached :photo;
end

