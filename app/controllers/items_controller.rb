class ItemsController < ApplicationController

  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all.includes(:colors)
  end

  def new
    @item = Item.new
  end

  def show
  end

  def edit
  end

  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save && @item.colors.create(color: params[:color])
        format.html { redirect_to new_item_path, notice: 'Item was Successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @item.update(item_params) && @item.colors.update(color: params[:color])
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @item.destroy

    respond_to do |format|
      format.html { redirect_to items_path, notice: 'Item was successfully destroyed.' }
    end
  end



  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:image, :name, :price, :body, :brand, :category, :country)
  end

end
