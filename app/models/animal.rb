class Animal < ApplicationRecord
  validates :name, presence: true
  validates :species, presence: true
  validates :age, presence: true

  # scope :name, -> (name) { where("name ILIKE ?", "%#{name}%")}
  scope :species, -> (species) { where("name ILIKE ?", "%#{species}%")}
end
