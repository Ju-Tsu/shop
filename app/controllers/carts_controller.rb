class CartsController < ApplicationController
  def index
    @items_in_cart = Item.where(id: current_cart)
  end
end