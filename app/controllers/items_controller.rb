class ItemsController < ApplicationController
  def index
    @items = Item.all.order(created_at: :desc)  # 新しい順に表示
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path, notice: 'アイテムを登録しました！'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :category, :tag, :price, :purchased_at, :shop, :photo)
  end
end
  