class ItemsController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_item, only: %i[show edit update destroy]

  def index
    @items = Item.all.order(created_at: :desc)
  end

  def show
    # 詳細ページ用（@itemはbefore_actionで取得済み）
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

  def edit
    # 編集ページ用
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item), notice: 'アイテムを更新しました！'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path, notice: 'アイテムを削除しました。'
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :category, :tag, :price, :purchased_at, :shop, :photo)
  end
end