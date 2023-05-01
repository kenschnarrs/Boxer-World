class WishlistItemController < ApplicationController
    before_action :set_user


    def index
        @user = current_user
        @wishlists = @user.wishlists
    render :index
    end

    def show
        @wishlist = Wishlist.find(params[:id])
        @items = @wishlist.items
    render :show
  end

    def new
        @user = User.find(params[:user_id])
        @wishlist = Wishlist.new
    render :new
    end

    def add_to_wishlist
        #
    end

    def remove_item_from_wishlist
        #
    end

    def create
        @wishlist = current_user.wishlists.build(wishlist_params)
        if @wishlist.save
            flash[:success] = "Wishlist successfully created!"
            redirect_to root_path
        else
            flash.now[:error] = "Wishlist not created!"
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
      # TODO: Add logic to delete wishlist
    end

    private

    def wishlist_params
        params.require(:wishlist).permit(:name)
    end

    def set_user
        @user = current_user
    end
end
