class Item < ApplicationRecord
  belongs_to :receipt, optional: true

  validates :name, presence: true
  validates :unit_price, presence: true
end
