class EmptyController < ApplicationController
  def index
    @stores = Store.all
    @receipts = Receipt.all
  end
end
