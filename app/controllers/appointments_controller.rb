class AppointmentsController < ApplicationController
    before_action :find_appt, only:[:show, :edit, :update, :destroy]
    def show
         render :show
    end 
    
    def new 
        @appointment = Appointment.new
         render :new
    end 

    def create 
        @appointment = Appointment.create(appt_params)
        @appointment = Appointment.new(appt_params)
        if @appointment.valid?
            session[:appointment_id] = appointment.id
          redirect_to swag_path(@appointment)
        else 
          flash[:appointment_errors] = @appointment.errors.full_messages
          redirect_to new_appointment_path 
        end 
        # render :show
      end 
     
      def edit 
        render :edit
      end
      
      def update 
        if @appointment.update(appt_params)
          redirect_to appointment_path(@appointment)
        else
          flash[:appointment_errors] = @appointment.errors.full_messages
          redirect_to edit_appointment_path
        end 
      end 
      
      def destroy 
        @appointment.destroy
        redirect_to appointment_path
      end 
     
      private
      
      def appt_params
        params.require(@appointment).permit(:availability, :date)
      end 
     
      def find_appt
        @appointment = Appointment.find(params[:id])
      end

end 