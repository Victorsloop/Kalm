class UserSwagsController < ApplicationController 

    def index 
        user_swag = User_Swag.all
    end 

    def show 
        @user_swag 
    end 
    
end 