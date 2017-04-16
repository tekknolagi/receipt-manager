class Item < ApplicationRecord
  belongs_to :receipt, optional: true

  validates :product_id, numericality: { only_integer: true }
  validates :name, presence: true
  validates :unit_price, presence: true, numericality: true

  def name=(n)
    self[:name] = n.upcase
  end
end
