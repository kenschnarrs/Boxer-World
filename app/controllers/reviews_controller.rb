class ReviewsController < ApplicationController


    before_action :authenticate_user!, except: [:index]

    # def show
    #     @item = Item.find(params[:item_id])
    #     @review = @item.reviews.find(params[:id])
    #     render :show
    #   end


    def index
        @item = Item.find(params[:item_id])
        @reviews = @item.reviews
        render :index
      end



      def new
        @item = Item.find(params[:item_id])
        @review = Review.new
        render :new
      end

      def create
        @item = Item.find(params[:item_id])
        @review = @item.reviews.build(params.require(:review).permit(:rating, :review_text))
        @review.user=current_user
        puts @review.inspect
        if @review.save
          flash[:success] = "Review saved successfully"
          redirect_to item_reviews_url(@item)
        else
          flash.now[:error] = "review could not be saved"
          render :new, status: :unprocessable_entity
        
        
        end
    end

end
