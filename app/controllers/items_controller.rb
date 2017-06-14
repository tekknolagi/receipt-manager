class ItemsController < ApplicationController
  def show
#    @item = if params.has_key?(:product_id)
#              Item.where(product_id: params[:product_id]).first
#            else
    @item = Item.find params[:id]
#            end
  end

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find params[:id]
  end

  def create
    @item = Item.new item_params
    if @item.save
      flash[:notice] = 'Successfully added item'
      redirect_to new_item_url(receipt_id: item_params[:receipt_id])
    else
      render 'new'
    end
  end

  def update
    @item = Item.find params[:id]
    if @item.update item_params
      redirect_to @item
    else
      render 'edit'
    end
  end

  def remove
    @receipt = Receipt.find params[:receipt_id]
    @receipt.items.delete(Item.find params[:id])
    redirect_to @receipt
  end

  private

  def item_params
    params.require(:item).permit(:taxed, :product_id, :name, :unit_price, :receipt_id)
  end
end
