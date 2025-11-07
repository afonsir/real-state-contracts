class CreateBuyers < ActiveRecord::Migration[7.2]
  def change
    create_table :buyers, id: :uuid do |t|
      t.string :name, null: false
      t.string :document_number, null: false, limit: 14
      t.string :kind, null: false, limit: 4

      t.timestamps
    end
  end
end
