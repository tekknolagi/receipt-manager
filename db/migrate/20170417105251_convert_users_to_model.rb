class ConvertUsersToModel < ActiveRecord::Migration[5.0]
  def up
    add_reference :receipts, :purchaser, foreign_key: { to_table: :users }
    Receipt.all.each do |r|
      r.purchaser = User.where(name: r.purchaser).first_or_create
    end
    remove_column :receipts, :purchaser
  end

  def down
    add_column :receipts, :purchaser, :string
    Receipt.all.each do |r|
      r.purchaser = User.find(r.purchaser_id).name
    end
    remove_reference :receipts, :purchaser
  end
end
