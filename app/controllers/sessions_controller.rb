class SessionsController < ApplicationController
    def create
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        user.generate_access_token 
        render json: { message: "success", access_token: user.access_token }, status: :ok
      else
        render json: { error: "Login failed" }, status: :unauthorized
      end
    end
  
    def destroy
      session.delete(:user_id)
      head :no_content
    end
  end
  