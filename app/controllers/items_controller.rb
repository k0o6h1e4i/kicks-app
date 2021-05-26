class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @items = Item.all.order('created_at DESC')
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    if @item.save
     redirect_to item_path(@item), notice: '投稿に成功しました。'
    else
     render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
    if @item.user != current_user
       redirect_to items_path, alert: '不正なアクセスです。'      
    end
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
     redirect_to item_path(@item), notice: '更新に成功しました。'
     else
      render :edit
     end
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to items_path
  end

  private
  def item_params
    params.require(:item).permit(:title, :body, :image)
  end
end
