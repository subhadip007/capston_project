class LoginController < ApplicationController

    def new
    end

    def create
        user = User.find_by(email: params[:login][:email].downcase)
        print(user)
        
        if user && user.authenticate(params[:login][:password]) 
            session[:user_id] = user.id
            # redirect_to root_path, notice: 'Successfully logged in!'
            
            if(user.role==true)
                redirect_to '/adminMenu'
            else
                redirect_to '/userMenu'
            end
        else
            flash.now.alert = "Incorrect email or password, try again."
            render "new"
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to '/login'
    end


end
