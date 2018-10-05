class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def enum
    @item = Item.find(1)
    @item.published!
  end

end
