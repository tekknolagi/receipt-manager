class Store < ApplicationRecord
  has_many :receipts

  validates :name, presence: true

  def selectable
    [name, id]
  end
end
