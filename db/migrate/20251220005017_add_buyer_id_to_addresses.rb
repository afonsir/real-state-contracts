class AddBuyerIdToAddresses < ActiveRecord::Migration[7.2]
  def change
    add_reference :addresses, :buyer, type: :uuid, foreign_key: true
  end
end
