class SessionsController < ApplicationController
    def page_reset
      session.delete(:page_count)
      redirect_back fallback_location: home_path
    end
  
    def logout 
      session.delete(:user_id)
    redirect_to home_path
    end 
  end