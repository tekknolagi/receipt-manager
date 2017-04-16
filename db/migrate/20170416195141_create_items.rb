class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.boolean :taxed
      t.integer :product_id
      t.string :name
      t.integer :unit_price
      t.references :receipt, foreign_key: true

      t.timestamps
    end
  end
end
