class CartController < ApplicationController
  def create
    if Cart.last
      cart = Cart.last
    else
      cart = Cart.create
    end

    photo = Photo.find(params[:photo_id])
    if cart.add(photo, photo.price)
      flash[:notice] = photo.title + " was  successfully added to cart!"
    else
      flash[:alert] = "Item not added, try again!"
    end
    redirect_to photos_path
  end

  def index
    @cart_items = Cart.last.shopping_cart_items.all
    @cart = Cart.last
  end
end
