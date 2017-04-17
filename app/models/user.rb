class User < ApplicationRecord
  has_many :receipts, foreign_key: :purchaser_id

  def selectable
    [name, id]
  end
end
