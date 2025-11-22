class CreateAddresses < ActiveRecord::Migration[7.2]
  def change
    create_table :addresses, id: :uuid do |t|
      t.string :uf, null: false, limit: 2
      t.string :municipality, null: false
      t.string :street, null: false
      t.string :number, null: false
      t.string :complement
      t.string :neighborhood, null: false
      t.string :zipcode, null: false, limit: 8

      t.timestamps
    end
  end
end
