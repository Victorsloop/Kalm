class SwagsController < ApplicationController
    def index
        @swag = Swag.all
        # render :index
    end
    
    def show
        @swag = Swag.find(params[:id])
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
        @swag = Swag.find(params[:id])
        render :edit
      end
      
      def update 
         @swag = Swag.find(params[:id])
        if @swag.update(swag_params)
          redirect_to swag_path(@swag)
        else
          flash[:swag_errors] = @swag.errors.full_messages
          redirect_to edit_swag_path
        end 
      end 
      
      def destroy 
        @swag = Swag.find(params[:id])
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