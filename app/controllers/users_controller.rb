class UsersController < ApplicationController

#Calvin Gott -  created the User Contrller class, to have User Actions
    before_action :authenticate_user!

    def index
        @users = User.order(:email)
        render :index
    end

    def show
        @user = current_user
        render :show
    end

    def edit
        @user = current_user
        render :edit
    end

    # This is the currently used update method.
    def update
        if current_user.update(user_update_params)
          flash[:success] = 'Updated successfully!'
          redirect_to user_profile_path
        else
          flash.now[:error] = 'Your update failed!'
          @user = current_user
          render :edit, status: :unprocessable_entity
        end
    end

    def profile
      @user = current_user
      render :profile
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
