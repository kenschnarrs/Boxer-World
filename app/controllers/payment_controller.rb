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

    # This action processes a checkout.
    def create
        @user = current_user

        if current_user.cart.cart_items.any?
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
            puts "Finished"

            puts "Seeing if payment build succeeded.."
            if @payment.save
                puts "Creating payment items..."
                current_user.cart.cart_items.each do |cart_item|
                    
                    puts "Building payment item..."
                    payment_item = @payment.payment_items.build(
                        item: cart_item.item,
                        quantity: cart_item.quantity
                    )
                    puts "Save:"
                    puts payment_item.save

                    if payment_item.save
                        item = cart_item.item

                        puts "Seeing if there is enough stock"
                        if cart_item.quantity <= item.num_in_stock
                            puts "There is, updating"
                            item.update(num_in_stock: item.num_in_stock - cart_item.quantity)
                        else
                            puts "Not enough stock!"
                            raise "Item #{item.name} does not have enough stock."
                        end
                    end

                end
                puts "Created all payment items"
            else
                puts "No payment, not creating any items"
            end
    
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
        else
            puts "Displaying no cart items message"
            flash.now[:error] = "You do not have any items in your cart!"            
            redirect_to root_path
        end
    end
      
end

