class Present < ApplicationRecord
  has_many :amounts
  has_many :guests, through: :amounts
  validates :name, presence: true

end
