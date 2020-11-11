class UserSwagsController < ApplicationController 

    def new
        @user_swag = UserSwag.new
        @user_id = params[:user_id]
        render :new
    end 

    def create 
        @user_swag = UserSwag.create(user_swag_params)
        @current_user.user_swags << @user_swag
         if @user_swag.valid?
            redirect_to swag_path(@user_swag)
        else 
            flash[:user_swag_errors] = @user_swag.errors.full_messages
            redirect_to new_user_swag_path 
        end 
    end 

    private
      
    def user_swag_params
        params.require(:user_swag).permit(:user_id, :swag_id, :rent , :buy, :rent_price)
    end 
    
end 