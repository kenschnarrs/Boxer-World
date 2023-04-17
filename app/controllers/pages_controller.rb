class PagesController < ApplicationController

    # Renders the home page
    def home
        @items = Item.where(isFeatured: true)
        render :home
    end

    def boxing_gloves
        @items = Item.where(category: "Boxing Gloves")
        @category = "Boxing Gloves"
        @info = "Armor for your weapons."
        render :category
    end

    def punching_bags
        @items = Item.where(category: "Punching bags")
        @category = "Punching Bags"
        @info = "Built to last."
        render :category
    end

    def apparel
        @items = Item.where(category: "Apparel")
        @category = "Apparel"
        @info = "Represent your lifestyle."
        render :category
    end

end
