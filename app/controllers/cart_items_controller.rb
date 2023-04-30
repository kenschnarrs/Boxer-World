class CartItemsController < ApplicationController
    before_action :authenticate_user!

    def create
        # In case user has never added item to a cart, get them one
        if current_user.cart.nil?
            current_user.cart = Cart.new
        end

        error_msg = "Error adding item to cart."
        
        puts "Looking for item"
        item = Item.find(params[:id])
        item_id = params[:id]

        puts "Looking for item in cart"
        cart_item = current_user.cart.cart_items.find_by(item_id: item_id)
        canSave = true
        puts "Checking whether the item exists in cart"
        if cart_item.present?
            
            puts "Item is currently in cart"

            puts "Checking whether there's enough in stock to add the item..."
            if cart_item.quantity + 1 <= cart_item.item.num_in_stock
                puts "There is enough in stock."

                cart_item.quantity += 1
                cart_item.save

                puts "Added to quantity"
            else
                puts "There is NOT enough in stock"
                error_msg = "We don't have enough items in stock for you to add it to your cart right now."
                canSave = false
            end
        else

            puts "Item is NOT currently in cart"
            puts "Building item..."
            cart_item = current_user.cart.cart_items.build(item_id: item_id)
            puts "Item built"
        end
        
        puts "Finishing up"
        if cart_item.save && canSave
            puts "Saving"
            flash[:success] = "Item added to cart!"
            redirect_to cart_path
        else
            puts "Showing error message"
            redirect_to item_path(item), alert: error_msg
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
