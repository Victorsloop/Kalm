class UsersController < ApplicationController 
    before_action :find_user, only:[:show, :edit, :update, :destroy]

    def index
        @user = User.all
        # render :index
    end
    
    def show
         render :show
    end 
    
    def new 
        @user = User.new
         render :new
    end 

    def create 
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id
          redirect_to user_path(@user)
        else 
          flash[:user_errors] = @user.errors.full_messages
          redirect_to new_user_path 
        end 
        # render :show
      end 
     
      def edit 
        render :edit
      end
      
      def update 
        if @user.update(user_params)
          redirect_to user_path(@user)
        else
          flash[:user_errors] = @user.errors.full_messages
          redirect_to edit_user_path
        end 
      end 
      
      def destroy 
        @user.destroy
        redirect_to user_path
      end 
     
      private
      
      def user_params
        params.require(:user).permit(:name, :age, :user_name , :password)
      end 
     
      def find_user
        @user = User.find(params[:id])
      end
end 