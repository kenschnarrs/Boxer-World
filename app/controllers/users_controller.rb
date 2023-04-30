class UsersController < ApplicationController

#Calvin Gott -  created the User Contrller class, to have User Actions
    before_action :authenticate_user!

    # List of profiles on the site
    def index
        @users = User.order(:email)
        @current_user = current_user
        render :index
    end

    # this should resolve a weird error that occurs sometimes
    def default_show
      @user = current_user
      @is_me = true

      render :show
    end

    def show
        @user = User.find(params[:id])
        @is_me = @user.id == current_user.id
        render :show
    end

    def edit
        @user = current_user
        render :edit
    end

    def update
        if current_user.update(user_update_params)
          flash[:success] = 'Updated successfully!'
          redirect_to user_path(current_user)
        else
          flash.now[:error] = 'Your update failed!'
          @user = current_user
          render :edit, status: :unprocessable_entity
        end
    end

    private
    def user_update_params
      params.require(:user).permit(
          :username, 
          :blurb,
          :first_name, 
          :last_name,
          :phone,
          :card_num,
          :cvc,
          :exp_month,
          :exp_year,
          :apt_num,
          :street_address,
          :city,
          :zip_code,
          :state,
          :country
      )
    end
    
end
