class RegistrationsController < ApplicationController
    def index
      registrations = Registration.all
      render json: registrations
    end
  
    def show
      registration = Registration.find(params[:id])
      render json: registration
    end
  
    def create
      registration = Registration.create(registration_params)
      if registration.valid?
        render json: registration, status: :created
      else
        render json: { error: registration.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def update
      registration = Registration.find(params[:id])
      registration.update(registration_params)
      render json: registration, status: :ok
    end
  
    def destroy
      registration = Registration.find(params[:id])
      registration.destroy
      head :no_content
    end
  
    private
  
    def registration_params
      params.require(:registration).permit(:registration_date, :registration_status, :player_id, :tournament_id)
    end
  end
  