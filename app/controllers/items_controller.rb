class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to new_item_path, notice: 'Item was Successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :price, :body, :brand, :category, :country)
  end

end
