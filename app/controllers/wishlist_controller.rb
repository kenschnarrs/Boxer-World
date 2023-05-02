class WishlistController < ApplicationController
    def index
        @user = current_user
        @user = User.find(params[:user_id])
        @wishlists = @user.wishlists
        render :index
    end

    def show
        @wishlist = current_user.wishlists.find(params[:id])
        render :show

    end

    def new
        @user = User.find(params[:user_id])
        @wishlist = Wishlist.new
    render :new
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

    private

    def wishlist_params
        params.require(:wishlist).permit(:name)
    end

    def set_user
        @user = current_user
    end
end
