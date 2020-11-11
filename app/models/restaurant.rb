class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: ["italian", "chinese", "indian", "french", "belgian", "japanese"] }
  validates :address, :name, presence: true
end
