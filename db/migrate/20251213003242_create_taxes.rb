class CreateTaxes < ActiveRecord::Migration[7.2]
  def change
    create_table :taxes, id: :uuid do |t|
      t.string :pre_index, null: false, limit: 10
      t.integer :total_pre_interest_in_cents, null: false

      t.string :pos_index, null: false, limit: 10
      t.integer :total_pos_interest_in_cents, null: false

      t.integer :mora_interest_in_cents, null: false
      t.integer :compensatory_fee_in_cents, null: false

      t.timestamps
    end
  end
end
