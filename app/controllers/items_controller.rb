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
end