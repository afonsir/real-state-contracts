class CreateTaxes < ActiveRecord::Migration[7.2]
  def change
    create_table :taxes, id: :uuid do |t|
      t.string :pre_index, null: false, limit: 10
      t.decimal :total_pre_interest, precision: 3, scale: 5, null: false

      t.string :pos_index, null: false, limit: 10
      t.decimal :total_pos_interest, precision: 3, scale: 5, null: false

      t.decimal :mora_interest, precision: 3, scale: 5, null: false
      t.decimal :compensatory_fee, precision: 3, scale: 5, null: false

      t.timestamps
    end
  end
end
