class PaymentController < ApplicationController
    before_action :authenticate_user!

    def new
        if current_user.cart.nil?
            current_user.cart = Cart.new
        end

        @payment = Payment.new
        @user = current_user
        render :new
    end

    def create
        @user = current_user

        puts "Building payment..."
        @payment = current_user.payments.build(params.require(:payment).permit(
            :first_name, 
            :last_name,
            :card_num,
            :cvc,
            :exp_month,
            :exp_year,
            :apt_number,
            :street_address,
            :city,
            :zip_code,
            :state,
            :country
        ))
        puts "Built payment"

        puts "Creating payment items..."
        current_user.cart.cart_items.each do |cart_item|
            
            puts "Building payment item..."
            @payment.payment_items.build(
                item: cart_item.item,
                quantity: cart_item.quantity
            )
        end
        puts "Created all payment items"

        puts "Evaluating save"
        if @payment.save
            puts "Success"

            puts "Destroying cart items"
            current_user.cart.cart_items.destroy_all

            puts "Display success message"
            flash[:success] = "Your order has been placed!"
            redirect_to root_path
        else
            puts "Displaying error message"
            flash.now[:error] = "There was an error in placing your order."
            @user = current_user
            
            render :new, status: :unprocessable_entity
        end
    end
      
end

