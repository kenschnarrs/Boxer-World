class UsersController < ApplicationController

#Calvin Gott -  created the User Contrller class, to have User Actions

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

    def update
        @user = current_user
        if @user.update(params.require(:user).permit(:name,:email, :phone, :address,:card_num, :cvc, :exp_month, :exp_year))
          flash[:success] = 'Your Account updated!'
          redirect_to root_path
        else
          flash.now[:error] = 'Your Account updated failed'
          render :edit, status: :unprocessable_entity
        end
    end

    def billing
        @user = current_user
        render :billing
    end

    def profile
      @user = current_user
      render :profile
    end

    def update_profile
      @user = current_user
      if @user.update(params.require(:user).permit(:username, :blurb))
        flash[:success] = 'Your Account updated!'
        redirect_to root_path
      else
        flash.now[:error] = 'Your Account updated failed'
        render :edit, status: :unprocessable_entity
      end
    end
    
end
