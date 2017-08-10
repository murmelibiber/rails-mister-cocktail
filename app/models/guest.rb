class Guest < ApplicationRecord
  has_many :amounts
  has_many :presents, through: :amounts
  validates :name, presence: true

end
