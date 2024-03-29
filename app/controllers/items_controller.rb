class ItemsController < ApplicationController
  def index
    @categories = Category.all
    @items = Item.all

    if params[:category_id].present?
      category = Category.find(params[:category_id])
      @items = @items.where(category: category)
      @current_category = params[:category_id].to_i
    end
  end
  def add_to_cart
    @item = Item.find(params[:id])
    add_item_to_cart(@item.id)
    redirect_back fallback_location: items_url
  end

  def delete_from_cart
    @item = Item.find(params[:id])
    cart = cookies[:cart].split(',')
    item_index = cart.index(params[:id])
    cart.delete_at(item_index)
    cookies[:cart] = cart.join(',')
    redirect_back fallback_location: carts_path
  end
  end