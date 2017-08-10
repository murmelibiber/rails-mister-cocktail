class AddPresentToAmount < ActiveRecord::Migration[5.1]
  def change
    add_reference :amounts, :present, foreign_key: true
  end
end
