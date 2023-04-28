class CartsController < ApplicationController
    before_action :authenticate_user!

    def show
        if current_user.cart.nil?
            current_user.cart = Cart.new
        end
        
        @cart = current_user.cart
        render :show
    end

end
