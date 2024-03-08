class RegistrationsController < ApplicationController
    def index
        registration = Registration.all
        render json: registration
    end

    def show
        registration = Registration.find(params[:id])
        render json: registration
    end

    def create
        registration = Registration.create(registration_params)
        if registration
    end

    def update
    end

    def destroy
    end

    private

    def registration_params

    end
end
