class Store < ApplicationRecord
  has_many :receipts
  validates :name, presence: true
end
