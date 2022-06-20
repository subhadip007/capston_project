class UsersController < ApplicationController
   def index
   end
   
    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      @user.role=0
      if @user.save
        # session[:user_id] = @user.id
        redirect_to '/'
      else
        flash.now.alert='something went wrong'
        redirect_to '/register'
      end
    end

    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation,:role)
    end
end
