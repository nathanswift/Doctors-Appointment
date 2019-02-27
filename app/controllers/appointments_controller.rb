class AppointmentsController < ApplicationController
  # before_action :set_doctor, only: [:new]
  before_action :set_user

  def index
    @appointments = @user.appointments.order(:date, :time)
  end
  
  def new
    # @users = User.all - @doctor.users
    @appointment = @user.appointments.new
  end

  def show
  end

  def create
    @appointment = @user.appointments.new(appointment_params)
    if @appointment.save
      redirect_to user_appointments_path(@user)
    else
      render :new
    end  
  end

  def destroy
    @appointment = @user.appointments.find(params[:id])
    @appointment.destroy
    redirect_to user_appointments_path(@user)
  end

  private
    def set_doctor
      @doctor = Doctor.find(params[:doctor_id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    def appointment_params
      params.require(:appointment).permit(:date, :time, :user_id)  
    end
end
