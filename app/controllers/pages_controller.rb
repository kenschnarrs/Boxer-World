class PagesController < ApplicationController

    # Renders the home page
    def home
        @items = Item.where(isFeatured: true)
        render :home
    end

    def index
        @q = Item.ransack(params[:q])
        @items = @q.result(distinct: true)
    end

    def search
        @query = params[:query].downcase
        @items = Item.where("lower(name) LIKE ?", "%#{@query}%")
        @category = "SEARCH RESULTS: " + @query
        @info = "Below are the results of your query."
        render :category
    end

    def boxing_gloves
        @items = Item.where(category: "Boxing Gloves")
        if params[:brands].present?
            @items = @items.where(brand: params[:brands])
        end

        @category = "Boxing Gloves"
        @info = "Armor for your weapons."
        puts params[:in_stock]
        if params[:in_stock].present?
            @items = @items.where("num_in_stock > ?", 0)
        end
        sort_order = params[:sort]

        case sort_order
        when "name_asc"
          @items = @items.order(name: :asc)
        when "name_desc"
          @items = @items.order(name: :desc)
        when "price_asc"
          @items = @items.order(price: :asc)
        when "price_desc"
          @items = @items.order(price: :desc)
        else
          @items = @items.order(name: :asc)
        end

        if sort_order.present?
            case sort_order
            when "name_asc"
              @items = @items.order(name: :asc)
            when "name_desc"
              @items = @items.order(name: :desc)
            when "price_asc"
              @items = @items.order(price: :asc)
            when "price_desc"
              @items = @items.order(price: :desc)
            else
              # Default sort by name in ascending order
              @items = @items.order(name: :asc)
            end
          end

        @brands = Item.select(:brand).distinct.where(category: @category)
        @in_stock = params[:in_stock]
        @_brands = params[:brands]
        @in_stock_count = @items.where(in_stock: true).count


        render :category
    end

    def punching_bags
        @items = Item.where(category: "Punching bags")
        if params[:brands].present?
            @items = @items.where(brand: params[:brands])
        end
        @category = "Punching Bags"
        @info = "Built to last."
        if params[:in_stock]
            @items = Item.where(category: @category, in_stock: true)
          else
            @items = Item.where(category: @category)
          end
        render :category
    end

    def apparel
        @items = Item.where(category: "Apparel")
        if params[:brands].present?
            @items = @items.where(brand: params[:brands])
        end
        @category = "Apparel"
        @info = "Represent your lifestyle."
        if params[:in_stock]
            @items = Item.where(category: @category, in_stock: true)
          else
            @items = Item.where(category: @category)
          end
        render :category
    end

end
