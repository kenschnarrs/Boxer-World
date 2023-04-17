class CartsController < ApplicationController
    before_action :authenticate_user!

    def show
        @cart = current_user.cart
        render :show
    end
    
    def checkout
        render :checkout
    end

    def execute_transaction
        # We're really just deleting all the items in the cart here...
        # In the future: replace current cart with new cart, do something
        # else with old cart?
        # Make new payment?
    end
end
