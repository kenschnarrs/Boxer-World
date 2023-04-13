class ItemController < ApplicationController

    def search
        @query = params[:query]
        @results = Item.where("name LIKE ?", "%#{@query}%")
    end

    def show
        @item = Item.find(params[:id])
        render :show
    end

end
