class CartItemsController < ApplicationController
    before_action :authenticate_user!

    def create
        # In case user has never added item to a cart, get them one
        if current_user.cart.nil?
            current_user.cart = Cart.new
        end
        @cart_item = current_user.cart.cart_items.build(item_id: params[:id])
        if @cart_item.save
            flash[:success] = "Item added to cart!"
            redirect_to cart_path(current_user.cart)
        else
            redirect_to root_path, alert: 'Error adding item to cart.'
        end
    end    
end
