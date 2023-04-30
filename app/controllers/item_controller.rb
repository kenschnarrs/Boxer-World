class ItemController < ApplicationController
    
    def show

        @item = Item.find(params[:id])
        @stock = @item.num_in_stock

        unless current_user.nil?
            if current_user.cart.nil?
                current_user.cart = Cart.new
            else
                cart_item = current_user.cart.cart_items.find_by(item_id: params[:id])
    
                # You can still view an item that is out-of-stock,
                # you just can't add it to your cart.
                if cart_item.present?
                    @stock = @item.num_in_stock - cart_item.quantity
                end
            end
        end

        render :show
    end
end
