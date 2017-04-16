class StoresController < ApplicationController
    def show
      @store = Store.find params[:id]
    end

    def index
      @stores = Store.all
    end

    def new
      @store = Store.new
    end

    def edit
      @store = Store.find params[:id]
    end

    def create
      @store = Store.new store_params
      if @store.save
        redirect_to @store
      else
        render 'new'
      end
    end

    def update
      @store = Store.find params[:id]
      if @store.update store_params
        redirect_to @store
      else
        render 'edit'
      end
    end

    private

    def store_params
      params.require(:store).permit(:name)
    end
end
