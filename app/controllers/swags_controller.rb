class SwagsController < ApplicationController
    before_action :find_swag, only:[:show, :edit, :update, :destroy]
    def index
        @swag = Swag.all
        # render :index
    end
    
    def show
         render :show
    end 
    
    def new 
        @swag = Swag.new
         render :new
    end 

    def create 
        @swag = Swag.create(swag_params)
         swag = Swag.new(swag_params)
        if @swag.valid?   
          redirect_to swag_path(@swag)
        else 
          flash[:swag_errors] = @swag.errors.full_messages
          redirect_to new_swag_path 
        end 
        # render :show
      end 
     
      def edit 
        render :edit
      end
      
      def update 
        if @swag.update(swag_params)
          redirect_to swag_path(@swag)
        else
          flash[:swag_errors] = @swag.errors.full_messages
          redirect_to edit_swag_path
        end 
      end 
      
      def destroy 
        @swag.destroy
        redirect_to swags_path
      end 
     
      private
      
      def swag_params
        params.require(:swag).permit(:name, :image_url, :price)
      end 
     
      def find_swag
        @swag = Swag.find(params[:id])
      end 
      
end 