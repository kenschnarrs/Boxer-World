class ItemController < ApplicationController

    def search
        @query = params[:query]
        @results = Item.where("name LIKE ?", "%#{@query}%")
    end

end
