class StoreItemsController < ApplicationController
  def index
    @store_items = Store_item.all
  end

  def show
    @store_item = Store_item.find(params[:id])
  end

  def new
    @store_item = Store_item.new
  end

  def create 
    @store_item = Store_item.new(store_item_params)
    
    if @store_item.save
      redirect_to store_item_path
    else
      render :new
    end
  end

  def edit
    @store_item = Store_item.find(params[:id])
  end

  def destroy
    @store_item.destroy
    redirect_to store_item_path
  end

  private
  def store_item_params
    params.require(:Store_item).permit(:name)
  end
end
