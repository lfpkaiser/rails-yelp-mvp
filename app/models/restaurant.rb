class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :category, inclusion: { in: CATEGORIES }
end
