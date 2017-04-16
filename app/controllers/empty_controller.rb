class EmptyController < ApplicationController
  def index
    @stores = Store.all
    @receipts = Receipt.all
    @items = Item.all
  end
end
