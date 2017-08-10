class Amount < ApplicationRecord
  belongs_to :present
  belongs_to :guest


  #An Amount must have a description, a guest and a present, and [guest, present] pairings should be unique.
  validates :desc, presence: true
  validates :present_id, uniqueness: { scope: :guest}
end



