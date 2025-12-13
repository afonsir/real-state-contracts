class CreateInstallments < ActiveRecord::Migration[7.2]
  def change
    create_table :installments, id: :uuid do |t|
      t.integer :number, null: false
      t.date :due_date, null: false
      t.integer :amount_in_cents, null: false

      t.timestamps
    end
  end
end
