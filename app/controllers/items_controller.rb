class ItemsController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_item, only: %i[show edit update destroy]

  def index
    @items = Item.all.order(created_at: :desc)
  
    if params[:category].present?
      @items = @items.where(category: params[:category])
    end
  
    if params[:tag].present?
      @items = @items.where("tag LIKE ?", "%#{params[:tag]}%")
    end
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
      redirect_to items_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # 編集ページ用
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :category, :tag, :price, :purchased_at, :shop, :photo)
  end
end