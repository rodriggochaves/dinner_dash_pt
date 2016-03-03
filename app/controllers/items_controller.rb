class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.all
  end

  def create
    @item = Item.create(item_params)
    if @item.save
      flash[:success] = "Item registered with success!"
      redirect_to new_item_path
    else
      flash[:warning] = "Item could not be created"
      render 'new'
    end
  end

  def new
    @item = Item.new
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :active)
  end
end
