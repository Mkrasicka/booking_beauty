class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :delete]

  def index
    # only the appointments made by the user(client)
    @appointments = Appointment.all
  end

  def create

  end



  def update
    # raise
    # @appointment = Appointment.find(params[:id])
  end

  def show
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end
end
