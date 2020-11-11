class UserSwagsController < ApplicationController 

    def new
        @user_swag = UserSwag.new
        @user_id = params[:user_id]
        @user_swag.build_swag
        render :new
    end 

    def create 
        @user_swag = UserSwag.create(user_swag_params)
         if @user_swag.valid?
            redirect_to swag_path(@user_swag)
        else 
            flash[:user_swag_errors] = @user_swag.errors.full_messages
            redirect_to new_user_swag_path 
        end 
    end 

    private
      
    def user_swag_params
        params.require(:user_swag).permit(:user_id, :rent , :buy, :rent_price, swag_attributes: [:id, :name, :image_url])
    end 
    
end 