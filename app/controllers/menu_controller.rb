class MenuController < ApplicationController

    def userMenu
      @order=Order.new
    end
  
    def adminMenu
    end


    # def create
    #     @order=Order.new(order_params)
    #     order.users_id=current_user.id
    #     p(order)
        # if @order.save
        #     # session[:user_id] = @user.id
        #     redirect_to '/userMenu'
        #   else
        #     flash.now.alert='something went wrong'
        #     # redirect_to '/register'
        #   end
    # end

    # def order_params
    #     params.require(:order).permit(:first_name, :last_name, :value, :commision,:mo_num,:address,:status,:users_id)
    # end
end
