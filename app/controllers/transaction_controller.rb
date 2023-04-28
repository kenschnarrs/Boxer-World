class TransactionController < ApplicationController
    before_action :authenticate_user!

    def new
        if current_user.cart.nil?
            current_user.cart = Cart.new
        end

        @transaction = Transaction.new
        @user = current_user
        render :new
    end

    def create
        @transaction = current_user.transactions.build(transaction_params)
                
        # Create transaction items
        current_user.cart.cart_items.each do |cart_item|

            transaction_item = @transaction.transaction_items.build(params.require(transaction_items.permit(
                item: cart_item.item,
                quantity: cart_item.quantity,
                price: cart_item.item.price
                )
            ))
            
            @transaction.transaction_items << transaction_item
        end

        if @transaction.save
            current_user.cart.cart_items.destroy_all

            flash[:success] = "Your order has been placed!"
            redirect_to item_reviews_url(@item)
        else
            flash.now[:error] = "There was an error in placing your order."
            render :new, status: :unprocessable_entity
        end
    end
    
    private
    
    def transaction_params
        params.require(:transaction).permit(
            :first_name, 
            :last_name,
            :card_num,
            :cvc,
            :exp_month,
            :exp_year,
            :apt_num,
            :street_address,
            :city,
            :zip_code,
            :state,
            :country
        )
    end
      
end
