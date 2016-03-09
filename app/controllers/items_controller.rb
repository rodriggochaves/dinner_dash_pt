class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
  end

  def index
    if category_id = params[:categories]
      category = Category.find(category_id)
      @items = category.items
    else
      @items = Item.all
    end
  end

  def create
    @item = Item.create(item_params)
    if @item.save
      @item.category_item.create(category_id: params[:item][:categories])
      flash[:success] = "Item registered with success!"
      redirect_to new_item_path
    else
      flash[:warning] = "Item could not be created"
      redirect_to new_item_path
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
