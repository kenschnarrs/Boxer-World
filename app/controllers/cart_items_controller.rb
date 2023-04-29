class CartItemsController < ApplicationController
    before_action :authenticate_user!

    def create
        # In case user has never added item to a cart, get them one
        if current_user.cart.nil?
            current_user.cart = Cart.new
        end

        item_id = params[:id]
        cart_item = current_user.cart.cart_items.find_by(item_id: item_id)
        
        if cart_item.present?
            if cart_item.quantity + 1 <= cart_item.item.num_in_stock
                cart_item.quantity += 1
                cart_item.save
            end
        else
            cart_item = current_user.cart.cart_items.build(item_id: item_id)
        end
        
        if cart_item.save
            flash[:success] = "Item added to cart!"
            redirect_to cart_path
        else
            redirect_to root_path, alert: 'Error adding item to cart.'
        end
    end

    def delete
        @cart_item = CartItem.find(params[:id])
        @cart_item.destroy
        flash[:success] = 'Item removed from cart.'
        redirect_to cart_url, status: :see_other
    end

    def edit
        @cart_item = CartItem.find(params[:id])
        render :edit
    end

    def update
        @cart_item = CartItem.find(params[:id])
        if @cart_item.update(params.require(:cart_item).permit(:quantity))
            flash[:success] = 'Cart item amount successfully updated!'
            redirect_to cart_url
        else
            flash.now[:error] = 'Cart item update failed'
            render :edit, status: :unprocessable_entity
        end
    end
end
