class OrdersController < ApplicationController
    
  def show
    @orders=Order.all
  end
  def change
    @order=Order.find(params[:id])
    @order.status='Delivered'
    @order.save
    redirect_to '/userMenu'
    p("something from change")
  end
  def new
      @order=Order.new
  end

  def report
     @orders=Order.find_by(status:'Delivered')
    # @orders.each do |order|
    #   @sum+=order[:commision]
    # end
   @sum= Order.where(:status=>'Delivered').sum('commision')
    # p(orders)
  end

    def create
        @order=Order.new(order_params)
        @order.users_id=current_user.id
        @order.status='Out for delivery'
        if @order.save
            # session[:user_id] = @user.id
            redirect_to '/userMenu'
          else
            flash.now.alert='something went wrong'
            # redirect_to '/register'
          end
    end

    def order_params
        params.require(:order).permit(:first_name, :last_name, :value, :commision,:mo_num,:address,:status,:users_id)
    end
end
