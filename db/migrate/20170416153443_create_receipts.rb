class CreateReceipts < ActiveRecord::Migration[5.0]
  def change
    create_table :receipts do |t|
      t.date :purchase_date
      t.string :purchaser
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
