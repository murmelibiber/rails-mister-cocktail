class AddGuestToAmount < ActiveRecord::Migration[5.1]
  def change
    add_reference :amounts, :guest, foreign_key: true
  end
end
