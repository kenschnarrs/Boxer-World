class WishlistItemController < ApplicationController
    before_action :set_user

    def create
        wishlist = Wishlist.find(params[:wishlist_id])
        item = Item.find(params[:item_id])
        wishlist_item = WishlistItem.new(wishlist: wishlist, item: item)
        if wishlist_item.save
            redirect_to wishlist_path(wishlist), notice: "Item added to wishlist!"
        else
            redirect_to item_path(item), alert: "Error adding item to wishlist."
        end


    end

    def remove_item
        @wishlist_item = WishlistItem.find(params[:id])
        @wishlist_item.destroy
        flash[:success] = 'Item removed from wishlist.'
        redirect_to wishlist_url, status: :see_other
    end


end
