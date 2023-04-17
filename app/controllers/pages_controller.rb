class PagesController < ApplicationController

    # Renders the home page
    def home
        @items = Item.where(isFeatured: true)
        render :home
    end

    def boxing_gloves
        @items = Item.where(category: "Boxing Gloves")
        render :category
    end

    def punching_bags
        @items = Item.where(category: "Punching bags")
        render :category
    end

    def apparel
        @items = Item.where(category: "Apparel")
        render :category
    end

end
