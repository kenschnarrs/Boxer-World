class UsersController < ApplicationController

    def index
        @users = User.order(:email)
        render :index
    end
    def show
        @user = User.find(params[:id])
        render :show
    end
    def edit
        @user = User.find(params[:id])
        render :edit
    end
    def update
        @user = User.find(params[:id])
        if @user.update(params.require(:user).permit(:email, :password))
          flash[:success] = 'Your Account updated!'
          redirect_to user_url(@user)
        else
          flash.now[:error] = 'TYour Account updated failed'
          render :edit, status: :unprocessable_entity
        end
      end
end
