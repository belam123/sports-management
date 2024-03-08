class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :no_response
    include ActionController::Cookies

    def no_response
        render json: { error: "Error" }, status: :unprocessable_entity
      end
end
