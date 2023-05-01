class ReviewsController < ApplicationController


    before_action :authenticate_user!, except: [:index]

    before_action :require_permission, except: [:index, :show, :new, :create]

    def require_permission
      @item = Item.find(params[:item_id])
      @review = @item.reviews.find(params[:id])
      if @review.user != current_user
        flash[:error] = 'You do not have permission to do that.'
        redirect_to item_reviews_path(@review)
      end
    end

    # def show
    #     @item = Item.find(params[:item_id])
    #     @review = @item.reviews.find(params[:id])
    #     render :show
    #   end


    def index
        @user = current_user
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


    def edit
      @item = Item.find(params[:item_id])
      @review = @item.reviews.find(params[:id])
      render :edit
    end

    def update
      @item= Item.find(params[:item_id])
      @review = @item.reviews.find(params[:id])
      if @review.update(params.require(:review).permit(:rating, :review_text))
        flash[:success] = "Review updated successfully"
        redirect_to item_reviews_url(@item)
      else
        flash.now[:error] = "Review could not be updated"
        render :edit, status: :unprocessable_entity
      end
    end



    def destroy
      unless current_user.nil?
        @item = Item.find(params[:item_id])
        @review = @item.reviews.find(params[:id])

        if @review.user_id == current_user.id
          @review.destroy
          flash[:success] = "Review deleted successfully"
          @item = Item.find(params[:item_id])
          @reviews = @item.reviews
          render :index, status: :see_other
        else
          flash[:error] = "You do not have permission to do that. (Code 1)"
          @item = Item.find(params[:item_id])
          @reviews = @item.reviews
          render :index, status: :unprocessable_entity
        end
      else
        flash[:error] = "You do not have permission to do that. (Code 2)"
        redirect_to root_path, status: :unprocessable_entity
      end
    end
  



end
