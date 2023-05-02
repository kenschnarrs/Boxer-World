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
        @current_path = ''
        @mode = "search"
        @query = params[:query].downcase
        @items = Item.where("lower(name) LIKE ?", "%#{@query}%")
        @concat_query = @query
        if @query == ""
          @concat_query = "(all items)"
        end
        @category = "SEARCH RESULTS: " + @concat_query
        @info = "Below are the results of your query."

        if params[:brands].present?
          @items = @items.where(brand: params[:brands])
        end

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

        @items_distinct_brands = Item.select(:brand).where("lower(name) LIKE ?", "%#{@query}%").distinct
        @in_stock = params[:in_stock]
        @brands = params[:brands]
        @in_stock_count = @items.where("num_in_stock > ?", 0).count

        render :category
    end

    def boxing_gloves
        @current_path = ""
        @mode = "normal"
        @items = Item.where(category: "Boxing Gloves")
        @category = "Boxing Gloves"
        @info = "Armor for your weapons."

        if params[:brands].present?
          @items = @items.where(brand: params[:brands])
        end

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

        @items_distinct_brands = Item.select(:brand).where(category: @category).distinct
        @in_stock = params[:in_stock]
        @brands = params[:brands]
        @in_stock_count = @items.where("num_in_stock > ?", 0).count

        render :category
    end

    def punching_bags
        @current_path = ""
        @mode = "normal"
        @items = Item.where(category: "Punching bags")
        @category = "Punching Bags"
        @info = "Built to last."

        if params[:brands].present?
          @items = @items.where(brand: params[:brands])
        end

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

        @items_distinct_brands = Item.select(:brand).where(category: @category).distinct
        @in_stock = params[:in_stock]
        @brands = params[:brands]
        @in_stock_count = @items.where("num_in_stock > ?", 0).count
   
        render :category
    end

    def apparel
        @current_path = ""
        @mode = "normal"
        @items = Item.where(category: "Apparel")

        @category = "Apparel"
        @info = "Represent your lifestyle."
        if params[:brands].present?
          @items = @items.where(brand: params[:brands])
        end

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

        @items_distinct_brands = Item.select(:brand).where(category: @category).distinct
        @in_stock = params[:in_stock]
        @brands = params[:brands]
        @in_stock_count = @items.where("num_in_stock > ?", 0).count

        render :category
    end

end
