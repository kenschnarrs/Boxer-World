class CartItemsController < ApplicationController
    before_action :authenticate_user!

    def create
        # In case user has never added item to a cart, get them one
        if current_user.cart.nil?
            current_user.cart = Cart.new
        end

        item_id = params[:id]

        puts "CHECKING"
        puts item_id
        puts "ABOVE IS ITEM"
        cart_item = current_user.cart.cart_items.find_by(item_id: item_id)
        
        if cart_item.present?
            puts "PRESENT"
            cart_item.quantity += 1
            cart_item.save
        else
            puts "NOT FOUND"
            # If the item is not in the cart, create a new cart item
            cart_item = current_user.cart.cart_items.build(item_id: item_id)
        end
        
        if cart_item.save
            flash[:success] = "Item added to cart!"
            redirect_to cart_path
        else
            redirect_to root_path, alert: 'Error adding item to cart.'
        end
    end

    def edit
        render :edit
    end

    def update
    end
end
