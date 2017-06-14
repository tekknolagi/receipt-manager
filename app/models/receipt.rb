class Receipt < ApplicationRecord
  belongs_to :store
  has_many :items
  belongs_to :purchaser, class_name: 'User'

  accepts_nested_attributes_for :purchaser

  validates :purchase_date, presence: true
  validates :purchaser, presence: true
  validates :store_id, presence: true

  def total
    items.collect { |i| i.unit_price }.sum
  end

  def selectable
    [File.join(store.name, purchaser.name, (total/100.0).to_s), id]
  end
end
